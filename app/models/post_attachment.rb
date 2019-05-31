class PostAttachment < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :post
end
