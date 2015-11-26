class MoviesController < ApplicationController
	def index
		@movies = Array.new
		@movies = ["Iron Man", "Superman", "Spider Man"]
	end
end
