class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :owner
      t.string :recipient
      t.string :s3_asset
      t.timestamps
    end
  end
end
