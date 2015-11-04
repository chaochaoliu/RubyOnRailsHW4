class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :post_tag_ref
	has_many :tags, through: :post_tag_ref
end
