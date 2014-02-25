class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to root_url, :notice => "Signed Up!"
  	else
  		render "new"
  	end
  end
  def user_params
  	params.require(:user).permit(:user_first_name, :user_last_name, :user_username, :user_rollnumber, :user_security_question, :user_security_answer, :user_password , :user_password_salt, :user_email)
  end
end
