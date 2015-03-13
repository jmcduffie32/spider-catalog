class Spider < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
end
