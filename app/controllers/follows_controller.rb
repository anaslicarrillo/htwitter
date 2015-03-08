class FollowsController < ApplicationController
	def create
		@user = User.find(params[:follows][:user])
		current_user.follow(@user)
		redirect_to tweets_path
	end

	def destroy
		@user = User.find(params[:follows][:user])
		current_user.stop_following(@user)
		redirect_to tweets_path
	end
end
