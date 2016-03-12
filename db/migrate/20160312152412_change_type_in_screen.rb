class ChangeTypeInScreen < ActiveRecord::Migration
  def change
    rename_column :screens, :type, :screen_type
  end
end
