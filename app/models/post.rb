class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :post_tag_refs
	has_many :tags, through: :post_tag_refs
  validates :title, presence: true
  # validates_length_of :content, :allow_blank => true
end
