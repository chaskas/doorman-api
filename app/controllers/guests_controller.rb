class GuestsController < ApplicationController
  before_action :authenticate_user!, only: [:create_by_ruts, :create]
  before_action :set_guest, only: [:show, :destroy]

  def do_visit

    person = Person.find_by! rut: params[:rut]

    person.last_seen = Time.now
    person.save

    event = Event.where("starts < :now AND ends > :now", { now: Time.now }).take!

    if Guest.exists?(person_id: person.id, event_id: event.id)

      guest = Guest.find_by! person_id: person.id, event_id: event.id

      if guest.ends > Time.now
        puts "///////////"
        puts guest.ends.to_s+ " " + Time.now.to_s
        puts "///////////"
      else
        puts "///////////"
        puts "NO" + guest.ends.to_s + " " + Time.now.to_s
        puts "///////////"
      end

      if Visit.exists?(person_id: person.id, event_id: event.id)

        @visit = Visit.find_by person_id: person.id, event_id: event.id

        render json: @visit, status: :not_found

      else

        @visit = Visit.new(person_id: person.id, event_id: event.id)

        if @visit.save
          render json: @visit, status: :created
        else
          render json: @visit.errors, status: :unprocessable_entity
        end

      end

    else

      render json: @guest, status: :not_found

    end

  end

  # GET /guests
  def index
    @guests = Guest.all

    render json: @guests
  end

  # POST /guests
  def create_by_ruts

    if user_signed_in?

      ruts = params[:ruts]
      event = Event.find_by! id: params[:id]

      success = false

      status = :ok

      guests = Array.new

      ruts.each do |rut|

        person = 0

        if Person.exists?(rut: rut)
          person = Person.find_by! rut: rut
        else
          person = Person.new(rut: rut, mtype: 0)
          person.save
        end

        if Guest.exists?(person_id: person.id, event_id: event.id)
          success = true
          status = :accepted
        else

          hour_limit = (event.starts + 1.day).change(hour: 1).beginning_of_hour
          if params[:ends].to_i == 0
            hour_limit = (event.starts + 1.day).change(hour: 0).beginning_of_hour
          elsif params[:ends].to_i == 1
            hour_limit = (event.starts + 1.day).change(hour: 1).beginning_of_hour
          elsif params[:ends].to_i == 2
            hour_limit = (event.starts + 1.day).change(hour: 2).beginning_of_hour
          elsif params[:ends].to_i == 3
            hour_limit = (event.starts + 1.day).change(hour: 3).beginning_of_hour
          elsif params[:ends].to_i == 4
            hour_limit = (event.starts + 1.day).change(hour: 4).beginning_of_hour
          elsif params[:ends].to_i == 5
            hour_limit = (event.starts + 1.day).change(hour: 5).beginning_of_hour
          else
            hour_limit = (event.starts + 1.day).change(hour: 1).beginning_of_hour
          end

          @guest = Guest.new(person_id: person.id, event_id: event.id, user_id: current_user.id, ends: hour_limit)

          if @guest.save
            success = true
            status = :created
          else
            success = false
            status = :unprocessable_entity
          end

        end

      end

      if success
        render json: guests.to_json, status: status
      else
        render status: status
      end

    else
      render status: :unauthorized
    end

  end


  # POST /guests
  def create

    if user_signed_in?
      @guest = Guest.new(guest_params)

      if @guest.save
        render json: @guest, status: :created, location: @guest
      else
        render json: @guest.errors, status: :unprocessable_entity
      end
    else
      render status: :unauthorized
    end
  end

  # DELETE /guests/1
  def destroy
    @guest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest
      @guest = Guest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def guest_params
      params.require(:guest).permit(:person_id, :event_id)
    end
end
