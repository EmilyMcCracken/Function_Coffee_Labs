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
	def self.model_name
		Webpage.model_name
	end

end

class Picturepage < Webpage
	def self.model_name
		Webpage.model_name
	end
end

class Contentpage < Webpage
	def self.model_name
		Webpage.model_name
	end
end