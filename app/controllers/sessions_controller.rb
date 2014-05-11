class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if user.user_role_id == 2
        redirect_to home_path, :notice => "Logged in!"
      elsif user.user_role_id == 1
        redirect_to admin_path, notice: "Login berhasil"
      end
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end