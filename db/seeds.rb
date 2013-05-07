# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Items.create([{item_category: 'Something', item_name: 'Name 1', item_description: 'Desc 1', item_available: true},
	{item_category: 'Something', item_name: 'Name 2', item_description: 'Desc 2', item_available: true}])
Options.create([{option_price: 1, option_quantity: 9000, option_name: 'Blue', option_description: 'Some blue t-shirt', item_id: 1},
	{option_price: 9000, option_quantity: 1, option_name: 'Red', option_description: 'Some red t-shirt', item_id: 2}])