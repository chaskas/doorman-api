class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :update, :destroy]

  def do_visit

    person = Person.find_by! rut: params[:rut]

    event = Event.where("starts < :now AND ends > :now", { now: Time.now }).take!

    if Guest.exists?(person_id: person.id, event_id: event.id)

      if Visit.exists?(person_id: person.id, event_id: event.id)

        @visit = Visit.find_by person_id: person.id, event_id: event.id

        render json: @visit, status: :not_found, location: @visit

      else

        @visit = Visit.new(person_id: person.id, event_id: event.id)

        if @visit.save
          render json: @visit, status: :created, location: @visit
        else
          render json: @visit.errors, status: :unprocessable_entity
        end

      end

    else

      render json: @guest, status: :not_found, location: @guest

    end

  end

  # GET /guests
  def index
    @guests = Guest.all

    render json: @guests
  end

  # POST /guests
  def create_by_rut

    person = 0

    if Person.exists?(rut: params[:rut])
      person = Person.find_by! rut: params[:rut]
    else
      person = Person.new(rut: params[:rut])
      person.save
    end

    event = Event.find_by! id: params[:id]

    @guest = Guest.new(person_id: person.id, event_id: event.id)

    if @guest.save
      render json: @guest, status: :created, location: @guest
    else
      render json: @guest.errors, status: :unprocessable_entity
    end
  end


  # POST /guests
  def create
    @guest = Guest.new(guest_params)

    if @guest.save
      render json: @guest, status: :created, location: @guest
    else
      render json: @guest.errors, status: :unprocessable_entity
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
