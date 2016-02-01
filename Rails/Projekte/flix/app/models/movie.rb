class Movie < ActiveRecord::Base
	def flop?
		total_gross.blank? || total_gross < 100
	end

	def self.released
		where("released_on < ?", Time.now)
	end
end
