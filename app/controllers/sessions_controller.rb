class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    # byebug
    redirect_to '/'
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end
