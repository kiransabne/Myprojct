class AddProductIdToSubcategory < ActiveRecord::Migration
  def change
    add_column :subcategories, :product_id, :string
  end
end
