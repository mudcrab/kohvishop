class CartController < ApplicationController

	def add
		cart = Carts.new(:cart_quantity => params[:quantity], :checkout_id => params[:checkout_id], :option_id => params[:option_id])
		if cart.save
			render :json => { 'id' => cart.id }
		else
			render :json => { 'id' => null }
		end
	end

	def checkout
		items = Array.new
		Carts.find(:all, :conditions => ['checkout_id = ?', params[:checkout_id]]).each do |cart|
			option = Options.find(cart.option_id)
			item_ = Items.find(option.item_id)

			item = { 'quantity' => option.option_quantity, 'price' => option.option_price, 'total' => option.option_quantity * option.option_price }
			item["name"] = item_.item_name
			items.push(item)
		end
		@items = items

		#pdf = WickedPdf.new.pdf_from_string('<h1>Hello There!</h1>')

		html = view_context.raw(render_to_string "invoice/invoice")
		pdf = WickedPdf.new.pdf_from_string (html)

		save_path = Rails.root.join('pdfs','filename.pdf')
		File.open(save_path, 'wb') do |file|
		  file << pdf
		end
		#render :template => "invoice/invoice"
		
		render :json => {}
		#render :json => items
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