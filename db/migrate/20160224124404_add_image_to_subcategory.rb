class AddImageToSubcategory < ActiveRecord::Migration
  def change
    add_column :subcategories, :image, :string
  end
end
