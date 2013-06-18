class CartController < ApplicationController

	after_filter :set_access_control_headers

	def set_access_control_headers
		headers['Access-Control-Allow-Origin'] = '*'
		headers['Access-Control-Request-Method'] = '*'
	end

	def add
		cart = Carts.new(:cart_quantity => params[:quantity], :checkout_id => params[:checkout_id], :item_id => params[:item_id])
		if cart.save
			render :json => { 'id' => cart.id }
		else
			render :json => { 'id' => null }
		end
	end

	def checkout
		items = Array.new
		@total = 0
		Carts.find(:all, :conditions => ['checkout_id = ?', params[:checkout_id]]).each do |cart|
			item = Items.find(cart.item_id)
			item_ = {
				:name => item.item_name,
				:code => item.item_code,
				:quantity => cart.cart_quantity,
				:price => item.item_price,
				:total => item.item_price * cart.cart_quantity
			}

			@total += item_[:total]
			items.push item_
			item.item_quantity -= cart.cart_quantity
			item.save
		end
		@items = items
		@checkout = Checkouts.find(params[:checkout_id]).attributes

		pdf = WickedPdf.new.pdf_from_string (render_to_string('cart/mailtest'))
		save_path = Rails.root.join('pdfs','filename.pdf')
		File.open(save_path, 'wb') do |file|
		   file << pdf
		end
		render :nothing => true
	end

	def mailtest
		items = Array.new
		@total = 0
		@total_net = 0
		@total_tax = 0
		Carts.find(:all, :conditions => ['checkout_id = ?', params[:checkout_id]]).each do |cart|
			item = Items.find(cart.item_id)
			item_ = {
				:name => item.item_name,
				:code => item.item_code,
				:quantity => cart.cart_quantity,
				:price => item.item_price,
				:price_net => item.item_price_net,
				:price_tax => item.item_price_tax
			}
			@total += item_[:price] * item_[:quantity]
			@total_net += item_[:price_net] * item_[:quantity]
			@total_tax += item_[:price_tax] * item_[:quantity]
			items.push item_
		end
		@items = items
		@checkout = Checkouts.find(params[:checkout_id]).attributes
	end

	def add_checkout
		Time::DATE_FORMATS[:ymd] = "%Y-%m-%d"

		checkout = Checkouts.new
		checkout.checkout_customer_address = params[:checkout_customer_address]
		checkout.checkout_customer_mail = params[:checkout_customer_mail]
		checkout.checkout_customer_name = params[:checkout_customer_name]
		checkout.checkout_customer_note = params[:checkout_customer_note]
		checkout.checkout_customer_phone = params[:checkout_customer_phone]
		checkout.checkout_date = Time.now.to_s(:ymd)
		checkout.checkout_date_due = (Time.now + 7.days).to_s(:ymd)
		checkout.checkout_verified = nil

		if checkout.save
			render :json => { 'id' => checkout.id }
		else
			render :json => { 'id' => nil }
		end
	end
end