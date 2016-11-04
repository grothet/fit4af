class User < ActiveRecord::Base
	has_secure_password
	belongs_to :division
	has_many	:tasks
	has_many :reports

	#validations:
	validates :name, presence: true
	validates :division_id, presence: true
  

	def self.authenticate(name, password)
		user = User.find_by(name: name)
		user && user.authenticate(password)
	end

	scope :verantwortlich, -> {where(verantwortlich: true).order(:name)}
	scope :sifa, -> {where(sifa: true).order(:name)}
end
