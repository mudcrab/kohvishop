class AddExtraPriceFields < ActiveRecord::Migration
  def change
  	change_table :items do |t|
      	t.float :item_price_net
      	t.float :item_price_tax
	end
  end
end
