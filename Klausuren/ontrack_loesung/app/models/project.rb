class Project < ActiveRecord::Base
	has_many :validations

	def get_average_ranking

		validations.average(:ranking)
		#return 1.25
	end
end
