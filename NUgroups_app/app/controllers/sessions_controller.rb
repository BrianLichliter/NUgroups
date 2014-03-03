class SessionsController < ApplicationController

	def create
		#handle shit
		user = User.from_omniauth(env["omniauth.auth"])
		session[:user_id] = user.id
		# change url
		redirect_to root_url
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url
	end

end

