class AddItemOrderToItems < ActiveRecord::Migration
  def change
  	change_table :items do |t|
      	t.integer :item_order, :default => 0
    end
  end
end
