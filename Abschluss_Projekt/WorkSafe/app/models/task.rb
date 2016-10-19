class Task < ActiveRecord::Base
	belongs_to :report
	belongs_to :accident
end
