class CreateImagePages < ActiveRecord::Migration
  def change
    create_table :image_pages do |t|
      t.integer :webpage_id
      t.integer :image_id

      t.timestamps null: false
    end
  end
end
