class ChangeCartsTable < ActiveRecord::Migration
	def change
		change_table :carts do |t|
			t.rename :option_id, :item_id
		end
	end
end