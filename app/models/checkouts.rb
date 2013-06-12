class Checkouts < ActiveRecord::Base
  attr_accessible :checkout_customer_address, :checkout_customer_mail, :checkout_customer_name, :checkout_customer_note, :checkout_customer_phone, :checkout_date, :checkout_date_due, :checkout_verified
end
