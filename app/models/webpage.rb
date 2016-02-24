class Webpage < ActiveRecord::Base
	has_many :images, through: :image_pages
	has_many :headers
	has_many :bodies 

	PAGES = ['Homepage', 'Contentpage', 'Picturepage']

	def get_page
		PAGES[@type]
	end


end

class Homepage < Webpage
end

class Picturepage < Webpage
end

class Contentpage < Webpage
end