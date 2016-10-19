class User < ActiveRecord::Base
	has_secure_password
	belongs_to :division

	validates :name, presence: true
  

	def self.authenticate(name, password)
		user = User.find_by(name: name)
		user && user.authenticate(password)
	end

	scope :verantwortlich, -> {where(verantwortlich: true).order(:name)}
	scope :sifa, -> {where(sifa: true).order(:name)}
end
