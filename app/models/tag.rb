class Tag < ActiveRecord::Base
	has_many :post_tag_refs
	has_many :posts, through: :post_tag_refs
	validates :name, presence: true
end
