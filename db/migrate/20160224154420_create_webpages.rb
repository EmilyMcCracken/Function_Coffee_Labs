class CreateWebpages < ActiveRecord::Migration
  def change
    create_table :webpages do |t|
      t.string :name
      t.string :type

      t.timestamps null: false
    end
  end
end
