class CleanUpImageTable < ActiveRecord::Migration
  def change
    remove_column :images, :s3_asset
    remove_column :images, :image_url
  end
end
