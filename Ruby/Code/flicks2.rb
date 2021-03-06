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
puts movie1.title
movie1.title = "Superman"
puts movie1.title
puts movie1

