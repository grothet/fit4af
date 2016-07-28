class Place < ActiveRecord::Base
	has_many :reports
	#has_many :categories, through => :reports
end
