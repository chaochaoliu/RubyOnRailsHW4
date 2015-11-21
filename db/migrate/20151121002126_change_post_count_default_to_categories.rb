class ChangePostCountDefaultToCategories < ActiveRecord::Migration
  def change
    change_column :categories, :post_count, :integer, default: 0
  end

end
