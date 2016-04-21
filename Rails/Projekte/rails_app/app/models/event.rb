class Event < ActiveRecord::Base
	has_many :registrations, dependent: :destroy
	has_many :likes, dependent: :destroy
	has_many :likers, through: :likes, source: :user

	validates :name, presence: true
	validates :description, length: { minimum: 10}
	validates :price, numericality: { only_integer: true }


	def free?
		self.price.present? && self.price > 0
	end

	def spots_left
		if capacity.zero?
			0
		else
			capacity - registrations.size
		end
	end	

	def self.upcoming
		where("start_at >= ?", Time.now).order("start_at")
	end

end
