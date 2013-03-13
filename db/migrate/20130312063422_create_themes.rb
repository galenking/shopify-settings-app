class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :name
      t.belongs_to :user

      t.timestamps
    end
    add_index :themes, :user_id
  end
end
