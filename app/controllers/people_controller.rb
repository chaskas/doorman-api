class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]

  # GET /people
  def index
    @people = Person.all

    render json: @people
  end

  # GET /people/m/host
  def host
    @people = Person.where(mtype: 2).order('last_seen IS NULL, last_seen DESC')

    render json: @people
  end

  # GET /people/m/residente
  def residente
    @people = Person.where(mtype: 1).order('last_seen IS NULL, last_seen DESC')

    render json: @people
  end

  # GET /people/m/embajador
  def embajador
    @people = Person.where(mtype: 4).order('last_seen IS NULL, last_seen DESC')

    render json: @people
  end

  # GET /people/m/invitado
  def invitado
    @people = Person.where(mtype: 3).order('last_seen IS NULL, last_seen DESC')

    render json: @people
  end

  # GET /people/m/invitado1
  def invitado1
    @people = Person.where(mtype: 5).order('last_seen IS NULL, last_seen DESC')

    render json: @people
  end

  # GET /people/m/normal
  def normal
    @people = Person.where(mtype: 0).order('last_seen IS NULL, last_seen DESC')

    render json: @people
  end

  # GET /people/1
  def show
    render json: @person, include: :visits
  end

  # POST /people
  def create
    @person = Person.new(person_params)

    if @person.save
      render json: @person, status: :created, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      render json: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def person_params
      params.require(:person).permit(:rut, :first_name, :last_name, :gender, :email, :phone, :mtype, :last_seen)
    end
end
