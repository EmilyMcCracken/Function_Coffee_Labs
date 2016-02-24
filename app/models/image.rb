class Image < ActiveRecord::Base
	has_many :webpages, through: :image_pages
end
