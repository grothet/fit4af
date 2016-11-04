require_relative "../uploaders/avatar_uploader"
class Report < ActiveRecord::Base
	mount_uploaders :avatars, AvatarUploader
	serialize :avatars
	belongs_to :category
	belongs_to :place
	has_many :tasks
	belongs_to :user


	#validations:
	validates :user_id, presence: true
	validates :wann, presence: true
	validates :place_id, presence: true
	validates :ereignis, presence: true
	validates :category_id, presence: true
end
