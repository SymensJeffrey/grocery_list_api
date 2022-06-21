class AddItemsArrayToLists < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :items, :array
  end
end
