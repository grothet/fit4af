class Project < ActiveRecord::Base
	has_many :tasks
	
	validates :title, length: { minimum: 5 }	#Zeichenläge min. 5 Zeichen
	validate :start_date_cannot_be_in_the_past #Abfrage ob das Start_date in der Zukunft liegt

	def start_date_cannot_be_in_the_past #Hier wird die Methode/Bedingung für die Validation festgelegt
  	errors.add(:start_date, "Projektstart muss in der Zukunft liegen") if !start_date.blank? && start_date < Date.today
	end
end
