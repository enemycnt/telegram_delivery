class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.belongs_to :order, index: true, foreign_key: true
      t.text :comment

      t.timestamps null: false
    end
  end
end
