class SessionController < ApplicationController
  def new
  end

  def create
  	user= User.authenticate(user_login_params)
  	if user
  		session[:user_id] = user.id
  		redirect_to root_uel, :notice => "Logged In!"
  	else
  		flash.now.alert = "Invalid username, rollnumber and password combination"
  		render "new"
  	end
  end

  def user_login_params
  	params.require(:user).permit(:user_username, :user_rollnumber, :user_email, :user_password)
  end
end
