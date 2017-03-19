class Page < ApplicationRecord

	has_many :athlete_stories

	accepts_nested_attributes_for :athlete_stories, allow_destroy:true

	has_attached_file :header_image, styles: { medium: "300x300>", thumb: "100x100>"  }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :header_image, content_type: /\Aimage\/.*\z/
	
	has_attached_file :secondary_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :secondary_image, content_type: /\Aimage\/.*\z/

	has_attached_file :foundation_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :foundation_image, content_type: /\Aimage\/.*\z/
	
	has_attached_file :secondary_foundation_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :secondary_foundation_image, content_type: /\Aimage\/.*\z/
end
