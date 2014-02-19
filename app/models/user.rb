class User < ActiveRecord::Base
	attr_accessor :user_password
	before_save :encrypt_password

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates(:user_password, presence: true, confirmation: true)
	validates(:user_email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX })
	validates(:user_security_question, presence: true)
	validates(:user_security_answer, presence: true)
	validates(:user_first_name, presence: true)
	validates(:user_last_name, presence: true)
	validates(:user_username, presence: true, uniqueness: true)
	validates(:user_rollnumber, presence: true, uniqueness: true)

	def encrypt_password
		if user_password.present?
			self.user_password_salt = BCrypt::Engine.generate_salt
			self.user_password_hash = BCrypt::Engine.hash_secret(user_password, user_password_salt)
		end
	end
end
