class ChangeImageHeader < ActiveRecord::Migration
  def change
  	remove_column :header_images, :image_id, :integer
  end
end
