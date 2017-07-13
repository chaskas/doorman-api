class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]

  # GET /people
  def index
    @people = Person.all

    render json: @people
  end

  # GET /people/type
  def member_by_type

    mtype = params[:type]

    if mtype.to_i == 0
      @people = Person.where(mtype: mtype).where('last_seen is not null').order('nvisits DESC, last_seen DESC').limit(500)
    else
      @people = Person.where(mtype: mtype).order('last_seen IS NULL, nvisits DESC, last_seen DESC')
    end

    render json: @people.to_json({ :methods => :rank }), status: :ok
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
