Kohvishop::Application.routes.draw do

	match "/items" => "item#all"
	match "/items/item/:id" => "item#view"
	match "/items/category/:category" => "item#by_category"
	

	match "/cart/add" => "cart#add_checkout", :via => :post	# add customer info before checkout # POST
	match "/cart/co/:checkout_id" => "cart#checkout"						# cart checkout
	match "/cart/item/add/:item_id/:quantity/:checkout_id" => "cart#add"				# add item to cart with quantity

	root :to => "item#all"

end
