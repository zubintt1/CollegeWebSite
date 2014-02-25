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
<<<<<<< HEAD
  	params.require(:user).permit(:user_username, :user_rollnumber, :user_email, :user_password, :user_first_name)
=======
  	params.require(:user).permit(:user_username, :user_rollnumber, :user_email, :user_password)
>>>>>>> parent of 549d757... Minor Changes
  end

  def destroy
  	session[:user_username] = nil
  	redirect_to root_url, :notice => "Logged Out!" 
  end
end
