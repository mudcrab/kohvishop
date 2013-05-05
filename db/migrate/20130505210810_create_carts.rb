class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :option_id
      t.integer :checkout_id
      t.integer :cart_quantity

      t.timestamps
    end
  end
end
