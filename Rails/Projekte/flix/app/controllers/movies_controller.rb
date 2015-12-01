class MoviesController < ApplicationController
	def index
		@movies = Movie.all
		#@movies = Array.new
		#@movies = ["Iron Man", "Superman", "Spider Man"]
	end
end
