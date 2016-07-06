class Project < ActiveRecord::Base
  has_many :jobs
  
	validates :title, presence: true
	validates :description, presence: true
	validates :start_date, presence: true
	validate :later_than

  def later_than
    if(:end_date >= :start_date)
    	return true
    else
    	return false
    end
  end
end
