class User < ActiveRecord::Base
	has_secure_password

	has_many :articles
	before_save {self.email = email.downcase}
	validates :username, presence: true,
				uniqueness:{case_sensitive: false},
				length: {mininum: 3 , maximum: 25}


	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true,
				uniqueness:{case_sensitive: false},
				format: {with: VALID_EMAIL_REGEX},
				length: {maximum: 50}			

end 