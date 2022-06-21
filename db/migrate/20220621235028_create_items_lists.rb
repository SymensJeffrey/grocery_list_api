class CreateItemsLists < ActiveRecord::Migration[6.1]
  def change
    create_table :items_lists do |t|
      t.integer :list_id
      t.integer :item_id

      t.timestamps
    end
  end
end
