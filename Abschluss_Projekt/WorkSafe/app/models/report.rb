class Report < ActiveRecord::Base
	belongs_to :category
	USER_OPTIONS = [ User.find_by(name: "Anonym").name, User.find_by(id: 9).name]


end
