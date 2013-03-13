class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.string :name
      t.belongs_to :setting
      t.text :attributes

      t.timestamps
    end
    add_index :values, :setting_id
  end
end
