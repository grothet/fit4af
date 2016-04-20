class Validation < ActiveRecord::Base
  belongs_to :project

  validates :username, presence: true
  validates :comment, length: { minimum: 15 }
  RANKING_ITEM = [1,2,3,4,5]
  validates :ranking, inclusion: {in: RANKING_ITEM}
end
