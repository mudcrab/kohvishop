Kohvishop::Application.routes.draw do

	match "/items" => "item#all"
	match "/item/:id" => "item#view"
	match "/items/category/:category" => "item#by_category"
	

	match "/cart/:id/add/:quantity" => "cart#add"				# add item to cart with quantity
	match "/cart/:id/remove" => "cart#remove"					# remove item from cart
	match "/cart/:id/co" => "cart#remove"						# cart checkout

	match "/checkout/add" => "cart#add_customer", :via => :post	# add customer info before checkout # POST

	root :to => "item#all"

end
