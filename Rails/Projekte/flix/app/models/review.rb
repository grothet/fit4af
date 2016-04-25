class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user

  STARS = [1,2,3,4,5]
	validates :stars, inclusion: {in: STARS}
end
