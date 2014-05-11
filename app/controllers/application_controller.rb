class ApplicationController < ActionController::Base
  protect_from_forgery
  # force_ssl

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate
  	if current_user == nil
  		redirect_to root_path
  	end
  end

  helper_method :current_user
end