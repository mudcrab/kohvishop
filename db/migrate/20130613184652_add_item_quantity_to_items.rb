class AddItemQuantityToItems < ActiveRecord::Migration
  def change
  	change_table :items do |t|
      	t.integer :item_quantity, :default => 0
    end
  end
end
