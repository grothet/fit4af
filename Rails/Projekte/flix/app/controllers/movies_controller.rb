class MoviesController < ApplicationController
	before_action :set_movie, only: [:show, :edit, :update, :destroy]
	before_action :set_sidebar_movies
	before_action :require_signin, except: [:index]
	before_action :require_admin, only: [:edit, :update, :destroy, :create]

	def index
		@movies = Movie.all#released
		#@movies = Array.new
		#@movies = ["Iron Man", "Superman", "Spider Man"]
	end

	def show
		@fans = @movie.favorites
		if current_user
			@current_fan = current_user.favorites.find_by(movie_id: @movie.id)
		end
	end

	def hits
		@movies = Movie.hits
	end

	def flops
		@movies = Movie.flops
	end

	def upcoming
		@movies = Movie.upcoming
	end

	def recent
		@movies = Movie.recent
	end

	def new
		@movie = Movie.new
	end

	def create 
		@movie = Movie.new(movie_params)
		if @movie.save
				redirect_to movies_url, notice:"Erfolgreich gespeichert"
		else
			flash[:alert] = "Speichern nicht möglich."
			render :new
		end
	end

	def edit
	end

	def update
		if @movie.update(movie_params)
				redirect_to movie_url, notice:"Ereignis erfolgreich geändert"
		else
			flash[:alert] = "Speichern nicht möglich."
			render :edit
		end
	end

	def destroy
			@movie.destroy
			redirect_to movies_url, alert:"Ereignis erfolgreich gelöscht"
	end

	private
		def movie_params
			params.require(:movie).permit(:title, :description, :poster_image_file, :cast, :direction, :duration, :rating, :total_gross, :released_on)
		end

		def set_movie
			@movie = Movie.find(params[:id])
		end
end
