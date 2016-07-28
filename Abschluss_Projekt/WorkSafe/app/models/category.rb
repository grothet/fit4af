class Category < ActiveRecord::Base
	has_many :reports
	#has_many :places, through => :reports
end
