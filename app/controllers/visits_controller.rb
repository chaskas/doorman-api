class VisitsController < ApplicationController
  before_action :set_visit, only: [:show, :update, :destroy]

  def do_visit

    person = Person.find_by! rut: params[:rut]

    event = Event.where("starts < :now AND ends > :now", { now: Time.now }).take!

    if Visit.exists?(person_id: person.id, event_id: event.id)
      # Restar 1 a remaining guest y guardar

      @visit = Visit.find_by person_id: person.id, event_id: event.id

      # TODO: Comprobar que no han pasado 5 minutos desde visit.created_at

      if @visit.remaining_guest > 0
        @visit.remaining_guest = @visit.remaining_guest - 1
      end

      if @visit.save
        render json: @visit, status: :ok, location: @visit
      else
        render json: @visit.errors, status: :unprocessable_entity
      end

    else
      # Crear visita con remaining guest correspondiente (dependiendo de person.mtype)

      rg = 0
      if person.mtype == 0 # Normal
        rg = 0
      elsif person.mtype == 1 # Residente
        rg = 1
      elsif person.mtype == 2 # Host
        rg = 3
      else
        rg = 0
      end


      @visit = Visit.new(person_id: person.id, event_id: event.id, remaining_guest: rg)

      if @visit.save
        render json: @visit, status: :created, location: @visit
      else
        render json: @visit.errors, status: :unprocessable_entity
      end

    end

  end

  # GET /visits
  def index
    @visits = Visit.all

    render json: @visits
  end

  # GET /visits/1
  def show
    render json: @visit
  end

  # POST /visits
  def create
    @visit = Visit.new(visit_params)

    if @visit.save
      render json: @visit, status: :created, location: @visit
    else
      render json: @visit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /visits/1
  def update
    if @visit.update(visit_params)
      render json: @visit
    else
      render json: @visit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /visits/1
  def destroy
    @visit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit
      @visit = Visit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def visit_params
      params.require(:visit).permit(:person_id, :event_id, :remaining_guests)
    end
end
