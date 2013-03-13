class RenameAttributesFieldInValues < ActiveRecord::Migration
  def up
    rename_column :values, :attributes, :properties
  end

  def down
  end
end