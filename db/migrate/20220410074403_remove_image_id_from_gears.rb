class RemoveImageIdFromGears < ActiveRecord::Migration[5.2]
  def change
    remove_column :gears, :image_id, :string
  end
end
