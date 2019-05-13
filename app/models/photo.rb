class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  belongs_to :place
  validates_processing_of :image
  validate :image_size_validation

  private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end
end
