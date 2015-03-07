class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.new(params[:content])
		@tweet.save
		render 'new'
	end

	def tweet_params
		params.require(:tweet).permit(:content)
	end
end
