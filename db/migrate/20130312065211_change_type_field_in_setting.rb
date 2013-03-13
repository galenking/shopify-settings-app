class ChangeTypeFieldInSetting < ActiveRecord::Migration
  def up
    rename_column :settings, :type, :field_type
  end

  def down
    rename_column :settings, :field_type, :type
  end
end