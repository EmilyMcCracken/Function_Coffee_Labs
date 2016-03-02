class HeaderImage < ActiveRecord::Base
	belongs_to :webpage

	has_attached_file :head_img, :styles =>
	{ :medium => "300x300>", :thumb => "100x100>" },
	:default_url => "/images/:style/missing.png"
	validates_attachment_content_type :head_img,
	:content_type => /\Aimage\/.*\Z/
end
