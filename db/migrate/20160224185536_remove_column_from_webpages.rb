class RemoveColumnFromWebpages < ActiveRecord::Migration
  def change
  	remove_column :webpages, :type, :integer
  end
end
