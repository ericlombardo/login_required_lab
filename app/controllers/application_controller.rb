class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def welcome

  end

  def current_user
    session[:name]
  end

  private

  def logged_in?
    if !current_user
      redirect_to login_path
    end
  end
end
