class CreateGears < ActiveRecord::Migration[5.2]
  def change
    create_table :gears do |t|
      t.string :name
      t.string :maker
      t.string :image_id
      t.text :introduction
      t.integer :price
      t.integer :genre_id
      t.integer :user_id

      t.timestamps
    end
  end
end
