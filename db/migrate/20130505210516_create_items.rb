class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_category
      t.string :item_name
      t.text :item_description
      t.boolean :item_available

      t.timestamps
    end
  end
end
