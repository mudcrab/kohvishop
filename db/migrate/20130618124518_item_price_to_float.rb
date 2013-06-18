class ItemPriceToFloat < ActiveRecord::Migration
	def change
		change_column :items, :item_price, :float
	end
end
