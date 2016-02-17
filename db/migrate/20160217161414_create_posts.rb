class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :category
      t.integer :admin_id

      t.timestamps null: false
    end
  end
end
