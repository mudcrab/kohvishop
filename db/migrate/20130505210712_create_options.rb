class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :option_price
      t.integer :option_quantity
      t.string :option_name
      t.text :option_description
      t.integer :item_id

      t.timestamps
    end
  end
end
