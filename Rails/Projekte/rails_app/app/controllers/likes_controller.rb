class LikesController < ApplicationController
	before_action :require_signin
	before_action :set_event

	def create
		#alternativ @event.likes.create(user: current_user)
		@event.likers << current_user
		@current_like = current_user.likes.find_by(event_id: @event.id)
		respond_to do |format|
			format.html {redirect_to @event, notice: "Super!"}
			format.js 
		end
		
	end

	def destroy
		@like = current_user.likes.find(params[:id])
		@like.destroy
		respond_to do |format|
			format.html {redirect_to @event, notice: "Wäre eh doof gewesen!"}
			format.js 
		end
	end

	private
		def set_event
			@event = Event.find(params[:event_id])
		end
end
