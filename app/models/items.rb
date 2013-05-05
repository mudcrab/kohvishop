class Items < ActiveRecord::Base
  attr_accessible :item_available, :item_category, :item_description, :item_name
end
