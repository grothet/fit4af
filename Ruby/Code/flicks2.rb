class Movie
	def initialize(ptitle, prank = 50)
		@title = ptitle.capitalize
		@rank = prank
	end
	def thumbs_up
		@rank = @rank +10
	end
	def thumbs_down
		@rank = @rank -10
	end
	def to_s
	 "Der Film #{@title} hat den Rank: #{@rank}"
	end

end 

movie1 = Movie.new("batman", 40)
puts movie1.to_s
movie1.thumbs_up
puts "Neuer Wert: #{movie1}"

