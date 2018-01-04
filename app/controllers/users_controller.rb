class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
  end

  def update
  end

  def create

    @user = User.new(user_params)

    @user.current_year = params[:user][:current_year].to_i
    @user.role = params[:user][:role] === "true" ? true : false

    @user.save
    redirect_to users_new_path
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :current_year, :role, :password, :password_confirmation)
    end
end
