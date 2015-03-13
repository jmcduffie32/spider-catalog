class Spider < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	validates :species, presence: true
	validates :description, presence: true
	default_scope -> { order(created_at: :desc)}
end
