module ApplicationHelper

	def get_valid_checkouts
		Checkouts.select( :id ).where( 'checkout_verified >= 0' ).map( &:id )
	end

	def get_item_quantity_sold( item_id )
		Carts.where( :item_id => item_id, :checkout_id => get_valid_checkouts ).sum( 'cart_quantity' )
	end

end
