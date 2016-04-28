class LikesController < ApplicationController
	before_action :require_signin
	before_action :set_event

	def create
		#alternativ @event.likes.create(user: current_user)
		@event.likers << current_user
		respond_to do |format|
			format.html {redirect_to @event, notice: "Super!"}
			format.js 
		end
		
	end

	def destroy
		like = current_user.likes.find(params[:id])
		like.destroy
		redirect_to @event, notice: "Gut gemacht"
	end

	private
		def set_event
			@event = Event.find(params[:event_id])
		end
end
