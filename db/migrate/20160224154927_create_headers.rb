class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :headers do |t|
      t.string :text
      t.integer :webpage_id

      t.timestamps null: false
    end
  end
end
