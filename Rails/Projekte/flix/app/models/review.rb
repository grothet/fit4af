class Review < ActiveRecord::Base
  belongs_to :movie

  STARS = [1,2,3,4,5]
	validates :stars, inclusion: {in: STARS}
	validates :name, presence: true 
end
