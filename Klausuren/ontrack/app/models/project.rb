class Project < ActiveRecord::Base
	has_many :validations

	validates :title, length: { minimum: 5 }
	validates :description, presence: true
end
