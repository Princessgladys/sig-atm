class SessionsController < ApplicationController
  layout "layouts/autorize"

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if user.user_role_id == 2
        redirect_to home_path, notice: "Login in berhasil."
      elsif user.user_role_id == 1
        redirect_to admin_path, notice: "Login berhasil."
      end
    else
      flash.now.alert = "Terjadi kesalahan pada username atau password."
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logout berhasil."
  end
end