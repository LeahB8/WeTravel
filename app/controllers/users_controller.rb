class UsersController < ApplicationController
  before_action :authorized?, except: [:new, :create]

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
    redirect_to login_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.bio = params[:user][:bio]
    @user.save
    redirect_to user_path(@user)
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :bio, :password, :password_confirmation)
  end
end
