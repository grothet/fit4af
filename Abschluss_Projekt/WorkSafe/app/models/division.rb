class Division < ActiveRecord::Base
	has_many :users

	#validations:
	validates :bezeichnung, presence: true
end
