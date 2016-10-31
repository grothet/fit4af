class Accident < ActiveRecord::Base
		belongs_to :task

		#validations:
		validates :wann, presence: true
		validates	:wer, presence:true
		validates	:was, presence:true
		validates :ausfall, presence:true, numericality: true
end
