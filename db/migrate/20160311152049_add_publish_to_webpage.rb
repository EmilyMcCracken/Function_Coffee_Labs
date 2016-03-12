class AddPublishToWebpage < ActiveRecord::Migration
  def change
  	add_column :webpages, :publish, :boolean
  end
end
