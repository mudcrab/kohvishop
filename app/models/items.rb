class Items < ActiveRecord::Base
  attr_accessible :id, :item_available, :item_category, :item_description, :item_name, :item_parent_id, :item_code, :item_price
end
