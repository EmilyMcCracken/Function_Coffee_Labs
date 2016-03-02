class CreateHeaderImages < ActiveRecord::Migration
  def change
    create_table :header_images do |t|
      t.integer :webpage_id
      t.integer :image_id

      t.timestamps null: false
    end
  end
end
