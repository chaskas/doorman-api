class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :update, :destroy, :update_avatar]
  before_action :set_profile, only: [:show, :update, :destroy, :update_avatar]

  # GET /profile
  # GET /profile.json
  def index
    if user_signed_in?
      if(Profile.exists?(user_id: current_user.id))
        @profile = Profile.find_by(user_id: current_user.id)
      else
        @profile = Profile.new
        @profile.user_id = current_user.id
        @profile.save
      end
    end
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      render json: @profile, status: :created
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    if user_signed_in?
      if @profile.update(profile_params)
        render json: @profile, status: :ok
      else
        render json: @profile.errors, status: :unprocessable_entity
      end
    end
  end

  def update_avatar
    if user_signed_in?
      if @profile.update(profile_params)
        render json: @profile, status: :ok
      else
        render json: @profile.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      if user_signed_in?
        @profile = Profile.find(current_user.profile.id)
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :birthdate, :user_id, :rut, :phone, :address, :gender, :marital_status, :picture)
    end
end
