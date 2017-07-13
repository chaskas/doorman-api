class UsersController < ApplicationController

  before_action :set_user, only: [:show]

  # before_action :authenticate_user!

  # GET /users
  def index
    @users = User.all

    render json: @users, include: :profile
  end

  # GET /users/1
  def show
    render json: @user
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:id)
    end

end
