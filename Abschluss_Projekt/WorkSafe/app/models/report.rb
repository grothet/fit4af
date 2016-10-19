require_relative "../uploaders/avatar_uploader"
class Report < ActiveRecord::Base
	mount_uploaders :avatars, AvatarUploader
	serialize :avatars
	belongs_to :category
	belongs_to :place
	belongs_to :task


end
