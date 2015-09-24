class Movie
	attr_reader :title, :rank

	def initialize(ptitle, prank = 50)
		@title = ptitle.capitalize
		@rank = prank
	end

	def title=(var)
			@title = var.capitalize
	end

	def normalized
		@rank = @rank * 10
	end

	def thumbs_up
		@rank = @rank +10
	end

	def thumbs_down
		@rank = @rank -10
	end

	def to_s
	 "Der Film #{@title} hat den Rank: #{normalized}"
	end

end 

movie1 = Movie.new("batman", 40)
movie2 = Movie.new("spiederman")
movie3 = Movie.new("superman")
movies = [movie1, movie2, movie3]
movies.each do |movie|
	puts movie
end

