class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.date :checkout_date
      t.date :checkout_verified
      t.string :checkout_customer_name
      t.string :checkout_customer_mail
      t.string :checkout_customer_phone
      t.text :checkout_customer_address
      t.text :checkout_customer_note

      t.timestamps
    end
  end
end
