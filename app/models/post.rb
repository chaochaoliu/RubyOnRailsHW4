class Post < ActiveRecord::Base
  scope :published, -> { where(published: true) }
	belongs_to :user
	belongs_to :category
	has_many :post_tag_refs
	has_many :tags, through: :post_tag_refs
  validates :title, presence: true

  after_create :post_count_increse
  after_destroy :post_count_decrese
  after_update :post_count_change

  protected
  def post_count_increse
    if category_id.present? 
      category = self.category
      category.increment!(:post_count)
    end
  end

  def post_count_decrese
    if category_id.present? 
      category = self.category
      category.decrement!(:post_count)
    end
  end

  def post_count_change
    if category_id_changed?
      
      category = self.category
      category.increment!(:post_count)

      old_id = category_id_was
      category = Category.find(old_id)
      category.decrement!(:post_count)
    end
  end
end
