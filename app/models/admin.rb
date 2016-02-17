class Admin < ActiveRecord::Base
	has_many :posts

	# for bcrypt
	has_secure_password
	# for bcrypt 
	def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  	end
end
