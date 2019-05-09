class UsersController < ApplicationController
  before_action :authorized?

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    # @user.save
    # @user = User.find(username: params[:user][:username])
    redirect_to login_path
  end

  def edit

  end

  def update

  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
