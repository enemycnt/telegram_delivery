class ChangeTypeInCommands < ActiveRecord::Migration
  def change
    rename_column :commands, :type, :command_type
  end
end
