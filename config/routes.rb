Kohvishop::Application.routes.draw do

	match "/items" => "item#all"
	match "/items/item/:id" => "item#view"
	match "/items/category/:category" => "item#by_category"
	

	match "/cart/add" => "cart#add_checkout", :via => :post	# add customer info before checkout # POST
	match "/cart/co/:checkout_id" => "cart#checkout"						# cart checkout
	match "/cart/item/add/:option/:quantity/:checkout_id" => "cart#add"				# add item to cart with quantity
	match "/cart/item/remove/:item_id/:checkout_id" => "cart#remove"					# remove item from cart
	
	

	root :to => "item#all"

end
