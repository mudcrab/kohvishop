class Carts < ActiveRecord::Base
  attr_accessible :cart_quantity, :checkout_id, :item_id
end
