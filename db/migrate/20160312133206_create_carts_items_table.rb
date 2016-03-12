class CreateCartsItemsTable < ActiveRecord::Migration
  def change
    create_table :carts_items, :id => false do |t|
      t.references :item
      t.references :cart
    end
    add_index :carts_items, [:item_id, :cart_id]
    add_index :carts_items, :cart_id
  end
end
