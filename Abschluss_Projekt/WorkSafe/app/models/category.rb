class Category < ActiveRecord::Base
	has_many :reports
	
	#validations:
	validates :titel, presence: true
	validates :bezeichnung, presence: true
end
