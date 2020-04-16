class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader

  validate :image_size

  private
  def image_size
    if picture.size > 1.megabytes
      errors.add(:picture, "should be less than 5MB")
    end  
  end  
end
