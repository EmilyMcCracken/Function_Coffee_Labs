class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :username
      t.string :password_digest
      t.integer :pin

      t.timestamps null: false
    end
  end
end
