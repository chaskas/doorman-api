class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]

  # GET /people
  def index
    @people = Person.all

    render json: @people
  end

  # GET /people/type/page
  def member_by_type
    mtype = params[:type]
    people = Person.where(mtype: mtype).order('last_seen IS NULL, last_seen DESC').sort_by(&:total_visits).reverse

    @people_sorted = Kaminari.paginate_array(people).page(params[:page]).per(20)

    render json: {
        people: @people_sorted,
        meta: {
          total_pages: @people_sorted.total_pages,
          current_page: @people_sorted.current_page,
          first_page: @people_sorted.first_page?,
          last_page: @people_sorted.last_page?,
          prev_page: @people_sorted.prev_page,
          next_page: @people_sorted.next_page
        },
        mtype: mtype }
  end

  # GET /people/m/normal
  def normal
    people = Person.where(mtype: 0).order('last_seen IS NULL, last_seen DESC').sort_by(&:total_visits).reverse

    @people_sorted = Kaminari.paginate_array(people).page(params[:page]).per(20)

    render json: { people: @people_sorted, meta: { total: @people_sorted.total_pages } }
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
