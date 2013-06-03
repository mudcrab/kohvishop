class AddMissingFieldsToItem < ActiveRecord::Migration
  def change
	change_table :items do |t|
      	t.integer :item_parent_id
      	t.integer :item_price
      	t.string :item_code
	end
	drop_table :options
  end
end
