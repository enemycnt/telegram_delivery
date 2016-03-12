class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :sub_category, index: true, foreign_key: true
      t.string :name
      t.text :content
      t.float :price
      t.string :picture_url

      t.timestamps null: false
    end
  end
end
