class Employee < ActiveRecord::Base
	belongs_to :project

	validates :nachname, presence: true

	def name 
		name = "#{@employees.vorname} #{@employees.nachname}"
	end
end
