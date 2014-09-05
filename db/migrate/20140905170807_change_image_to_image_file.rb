class ChangeImageToImageFile < ActiveRecord::Migration
  def change
    rename_column :images, :image, :image_file
  end
end
