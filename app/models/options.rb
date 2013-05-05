class Options < ActiveRecord::Base
  attr_accessible :item_id, :option_description, :option_name, :option_price, :option_quantity
end
