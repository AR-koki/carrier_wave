class Post < ApplicationRecord
	belongs_to :user, optional: true
	mount_uploaders :images, ImageUploader
end
