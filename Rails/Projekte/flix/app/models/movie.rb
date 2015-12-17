class Movie < ActiveRecord::Base
	def flop?
		total_gross.blank? || total_gross < 100
	end
end
