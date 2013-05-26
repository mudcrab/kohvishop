# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Items.create([{item_category: 'Something', item_name: 'Name 1', item_description: 'Desc 1', item_available: true},
#	{item_category: 'Something', item_name: 'Name 2', item_description: 'Desc 2', item_available: true}])
Items.create([{ item_category: 'Something', item_name: 'An item 1', item_description: 'Some item description', item_available: true, item_parent_id: nil, item_code: 0, item_price: 15 }])