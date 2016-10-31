class Place < ActiveRecord::Base
	has_many :reports

	#validations:
	validates :kostenstelle, presence: true
	validates :bezeichnung, presence: true
end
