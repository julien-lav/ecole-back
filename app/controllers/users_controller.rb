class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    redirect_to info_page_path unless current_user.id == @user.id || current_user.role == true
  end

  def new
    redirect_to info_page_path unless logged_in? && current_user.role == true
    @user = User.new
  end

  def edit
  end

  def update
  end

  def create
    @user = User.new(user_params)
    @user.role = params[:user][:role] === "true" ? true : false
    @user.save
    redirect_to users_new_path
  end

  def list
    redirect_to info_page_path unless logged_in? && current_user.role == true
    @users = User.all.order("name ASC")
  end

  def destroy
      @user = User.find(params[:id])
      @user.delete
      redirect_to list_path
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :current_year, :role, :password, :password_confirmation)
    end
end
