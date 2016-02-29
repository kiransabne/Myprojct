class AddColumnsToOrderItem < ActiveRecord::Migration
  def change
    add_column :order_items, :product_id, :integer
    add_column :order_items, :cart_id, :integer
  end
end
