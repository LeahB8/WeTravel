class SessionsController < ApplicationController
  helper_method :logged_in?

  def new
  end

  def create
    @user = User.find_by(username: params[:user][:username])
    # byebug
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect_to posts_path
  end

  def destroy
    session.delete :username
    redirect_to root_path
  end

  def logged_in?
    session[:username].nil?
  end

end
