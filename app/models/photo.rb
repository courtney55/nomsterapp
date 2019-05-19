class Photo < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :place
  validates_processing_of :picture
  has_one :caption
  has_one :place_id
end