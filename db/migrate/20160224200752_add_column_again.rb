class AddColumnAgain < ActiveRecord::Migration
  def change
  	add_column :webpages, :type, :string
  end
end
