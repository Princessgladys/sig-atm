class ApplicationController < ActionController::Base
  protect_from_forgery
  # force_ssl

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate
    if current_user == nil
      redirect_to root_path, alert: "Halaman ini tidak tersedia untuk anda."
    end
  end

  def authenticate_admin
    if current_user == nil and current_user.user_role != 1 
      redirect_to root_path, alert: "Halaman ini tidak tersedia untuk anda."
    end
  end

  helper_method :current_user
end