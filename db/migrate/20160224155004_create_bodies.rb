class CreateBodies < ActiveRecord::Migration
  def change
    create_table :bodies do |t|
      t.string :subheader
      t.text :paragraph
      t.integer :webpage_id

      t.timestamps null: false
    end
  end
end
