class Changecolumnwebpages < ActiveRecord::Migration
  def change
  	remove_column :webpages, :type, :integer
  	add_column :webpages, :type, :string
  end
end
