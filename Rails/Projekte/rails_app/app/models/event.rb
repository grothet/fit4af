class Event < ActiveRecord::Base

	def free?
		self.price.present? && self.price > 0
	end

end
