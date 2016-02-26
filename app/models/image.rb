class Image < ActiveRecord::Base
	has_many :webpages, through: :image_pages

	has_attached_file :img, :styles =>
	{ :medium => "300x300>", :thumb => "100x100>" },
	:default_url => "/images/:style/missing.png"
	validates_attachment_content_type :img,
	:content_type => /\Aimage\/.*\Z/
end
