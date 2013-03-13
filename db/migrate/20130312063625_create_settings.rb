class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :name
      t.belongs_to :theme
      t.string :type
      t.text :properties

      t.timestamps
    end
    add_index :settings, :theme_id
  end
end
