class EventsController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy]
	before_action :set_sidebar_events
	def index
		@events = Event.all#upcoming
	end

	def show
		#@sidebar_events = Event.all
	end

	def new
		@event = Event.new
	end

	def create 
		@event = Event.new(event_params)
		if @event.save
			flash[:notice] = "Erfolgreich gespeichert."
			redirect_to events_url
		else
			#flash[:alert] = "Fehler"
			render :new
		end
	end

	def edit

	end

	def update
		if @event.update(event_params)
				redirect_to events_url, notice: "Update war erfolgreich."
		else
			render :edit
		end
	end

	def destroy
			@event.destroy
			redirect_to events_url, alert: "Löschen war erfolgreich."
	end

	private
		def event_params
			params.require(:event).permit(:name, :image_file, :capacity, :description, :location, :price, :start_at)
		end

		def set_event
			@event = Event.find(params[:id])
		end
		

end
