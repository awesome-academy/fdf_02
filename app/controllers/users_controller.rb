class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = t "welcome"
      edirect_to root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user)
      .permit :full_name, :address, :email, :password, :password_confirmation
  end

  def find_user
    @user = User.find_by id params[:id]
    return if @user
    flash[:danger] = t "please_login"
    redirect_to root_path
  end
end
