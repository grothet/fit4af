class ReviewsController < ApplicationController
	before_action :set_movie
	before_action :require_signin

	def index
		@reviews = @movie.reviews
	end

	def new
		@review = @movie.reviews.new
	end

	def create
		@review = @movie.reviews.new(review_params)
		@review.user_id = current_user.id
			if @review.save
				redirect_to movie_path(@movie.id), notice: "Ihr Review wurde gespeichert."
			else
				render :new, notice: "Fehler beim Speichern"
			end
		end

private
	def review_params
				params.require(:review).permit(:comment, :stars, :user_id, :movie_id)
	end

	def set_movie
		@movie = Movie.find(params[:movie_id])
	end
end
