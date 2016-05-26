class Movie < ActiveRecord::Base
	has_many :reviews, dependent: :destroy
	has_many :favorites, dependent: :destroy
	has_many :fans, through: :favorites, source: :user
	
	validates :title, :released_on, :duration, presence: true
	validates :description, length: { minimum: 25 }
	validates :total_gross, numericality: { only_integer: true, greater_than_or_equal_to: 0 } 
	validates :poster_image_file,  allow_blank: true, format: { with: %r{\.(gif|jpeg|png)\Z}i}
	RATINGS = %w(G PG PG-13 R NC-17)
		validates :rating, inclusion: {in: RATINGS}


	def flop?
		total_gross.blank? || total_gross < 100
	end

	def self.released
		where("released_on < ?", Time.now)
	end

	scope :hits, -> {where("total_gross >= 1000000").order(:title)}
	scope :flops, -> {where("total_gross < 1000000").order(:title)}
	scope :upcoming, -> {where("released_on <= ?", Time.now).order("released_on")}
	scope :recent, -> {where("released_on > ?", Time.now).order("released_on")}
end
