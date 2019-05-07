class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params)
    @user.save
    redirect_to user_path(@user)
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
