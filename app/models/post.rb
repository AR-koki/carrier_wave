class Post < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :category,optional: true
	mount_uploaders :images, ImageUploader

	validates :title, presence: true
end
