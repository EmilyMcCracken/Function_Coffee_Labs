class ImagePage < ActiveRecord::Base
	belongs_to :image
	belongs_to :webpage
end
