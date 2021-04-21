class SessionsController < ApplicationController
  
  def new
  end

  def create
    if !params[:name].present?  # if no name entered => redirects to login
      redirect_to login_path 
    else
      session[:name] = params[:name]  # if name given => set session[:name] and redirect
      redirect_to root_path 
    end
  end

  def destroy
    session.delete :name
  end
end
