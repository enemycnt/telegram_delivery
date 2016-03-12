class AddScreenToCommands < ActiveRecord::Migration
  def change
    add_reference :commands, :screen, index: true, foreign_key: true
  end
end
