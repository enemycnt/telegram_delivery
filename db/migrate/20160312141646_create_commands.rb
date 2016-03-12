class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.string :title
      t.string :type
      t.text :description
      t.string :param

      t.timestamps null: false
    end
  end
end
