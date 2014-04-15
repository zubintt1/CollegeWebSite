class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(username: params[:username], rollnumber: params[:rollnumber])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
      redirect_to root_url, notice: "User was successfully logged in."
  	else 
  		redirect_to login_url, alert: "Invalid user/password combination"
  	end
  end

  def destroy
  	session[:user_id] = nil
	redirect_to store_url, notice: "Logged out"
  end
end