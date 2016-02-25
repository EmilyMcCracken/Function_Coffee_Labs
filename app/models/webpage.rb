class Webpage < ActiveRecord::Base
	has_many :images, through: :image_pages
	has_many :image_pages
	has_many :headers, foreign_key: 'webpage_id'
	has_many :bodies, foreign_key: 'webpage_id' 

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