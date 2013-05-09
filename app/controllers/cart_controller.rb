class CartController < ApplicationController

	def add
		cart = Carts.new(:cart_quantity => params[:quantity], :checkout_id => params[:checkout_id], :option_id => params[:option_id])
		if cart.save
			render :json => { 'id' => cart.id }
		else
			render :json => { 'id' => null }
		end
	end

	def remove

	end

	def checkout

	end

	def add_checkout
		# TODO add validation to the model
		checkout = Checkouts.new(params.slice(:checkout_customer_address, :checkout_customer_mail, :checkout_customer_name, :checkout_customer_note, :checkout_customer_phone, :checkout_date, :checkout_verified))
		if checkout.save
			render :json => { 'id' => checkout.id }
		else
			render :json => { 'id' => null }
		end
	end
end