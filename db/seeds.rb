# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Items.create([{item_category: 'Something', item_name: 'Name 1', item_description: 'Desc 1', item_available: true},
#	{item_category: 'Something', item_name: 'Name 2', item_description: 'Desc 2', item_available: true}])
Items.create([{ item_category: 'Something', item_name: 'An item 1', item_description: 'Some item description', item_available: true, item_parent_id: 0, item_code: "some_code", item_price: 15 },
		{ item_category: 'Something', item_name: 'An item 2', item_description: 'Some item description 12', item_available: true, item_parent_id: 1, item_code: "some_code", item_price: 3 },
		{ item_category: 'Asd lol', item_name: 'An item 3', item_description: 'Some item description', item_available: true, item_parent_id: 0, item_code: "some_code", item_price: 15 },
		{ item_category: 'Asd lol', item_name: 'An item 4', item_description: 'Some item description', item_available: true, item_parent_id: 3, item_code: "some_code", item_price: -2 },
		{ item_category: 'Asd lol', item_name: 'An item 5', item_description: 'Some item description', item_available: true, item_parent_id: 3, item_code: "some_code", item_price: -5 },
		{ item_category: 'Something', item_name: 'An item 6', item_description: 'Some item description', item_available: true, item_parent_id: 0, item_code: "some_code", item_price: 15 },
		{ item_category: 'Something', item_name: 'An item 7', item_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis rhoncus erat. Ut et tortor volutpat enim vestibulum vestibulum. Aenean vel sapien mauris. Vivamus lobortis elit at placerat sollicitudin. Vestibulum convallis nisi et eros dictum elementum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec cursus venenatis urna. Nunc tincidunt pharetra orci, eu pulvinar tortor cursus ac. Suspendisse tempor adipiscing mollis. Curabitur ac ante orci. Curabitur rhoncus molestie nulla, vitae tincidunt quam tristique sit amet. Aenean eu iaculis neque. Mauris ut eros enim. Aliquam id vulputate ante. Aliquam erat volutpat. Fusce sit amet imperdiet libero.', item_available: true, item_parent_id: 1, item_code: "some_code", item_price: 15 }])
