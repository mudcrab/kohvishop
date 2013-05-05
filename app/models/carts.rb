class Carts < ActiveRecord::Base
  attr_accessible :cart_quantity, :checkout_id, :option_id
end
