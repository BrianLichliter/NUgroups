class User < ActiveRecord::Base
	has_many :posts
	def self.from_omniauth(auth)
		where(auth.slice(:uid)).first_or_initialize.tap do |user|
			user.first_name = auth.info.first_name
			user.last_name = auth.info.last_name
			user.email = auth.info.email
			user.uid = auth.uid
			user.oauth_token = auth.credentials.token
			user.save
		end
	end
end

