class Task < ActiveRecord::Base
	belongs_to :report
	belongs_to :accident
	belongs_to :user

	#validations:
	validates :start_date, presence: true
	validates :description, presence: true
	validates :user_id, presence: true

	validate :report_or_accident

	private
	#Prüfung, ob eine report_id ODER eine accident_id mitgesendet wurde
	def report_or_accident
		  unless report_id.blank? ^ accident_id.blank?
        errors.add(:base, "Der Task muss für ein Ereignis oder einen Unfall erstellt werden")
      end
	end

end
