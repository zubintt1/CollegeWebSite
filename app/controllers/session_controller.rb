class SessionController < ApplicationController
  def new

  end

  def create
  	user= User.authenticate(user_login_params)
  	if user
  		session[:user_username] = user.user_username
  		redirect_to root_url, :notice => "Logged In!"
  	else
  		flash.now.alert = "Invalid username, rollnumber and password combination"
  		render "new"
  	end
  end

  def user_login_params
  	params.require(:user).permit(:user_username, :user_rollnumber, :user_email, :user_password)
  end

  def destroy
  	session[:user_username] = nil
  	redirect_to root_url, :notice => "Logged Out!" 
  end
end
