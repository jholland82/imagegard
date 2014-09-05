class Image < ActiveRecord::Base
  mount_uploader :image_file, ImageUploader
  validates :image_file, :presence => true
end
