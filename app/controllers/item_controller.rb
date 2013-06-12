class ItemController < ApplicationController

	after_filter :set_access_control_headers

	def set_access_control_headers
		headers['Access-Control-Allow-Origin'] = '*'
		headers['Access-Control-Request-Method'] = '*'
	end

	def all
		items = Array.new
		Items.where("item_parent_id = 0").each do |parent|
			item_ = {
				:id => parent.id,
				:name => parent.item_name,
				:description => parent.item_description,
				:available => parent.item_available,
				:category => parent.item_category,
				:price => parent.item_price
			}
			items.push(item_)
			Items.where("item_parent_id = ?", parent.id).each do |item|
				if item.item_available?
					item_ = {
						:id => item.id,
						:name => item.item_name,
						:description => item.item_description,
						:available => item.item_available,
						:category => item.item_category,
						:price => parent.item_price.ceil + item.item_price.ceil
					}
					items.push(item_)
				end
			end
		end
		render :json => items
	end

	def by_category
		items = Array.new
		Items.where("item_category = ? and item_parent_id = 0", params[:category]).each do |parent|
			item_ = {
				:id => parent.id,
				:name => parent.item_name,
				:description => parent.item_description,
				:available => parent.item_available,
				:category => parent.item_category,
				:price => parent.item_price
			}
			items.push(item_)
			Items.where("item_parent_id = ?", parent.id).each do |item|
				if item.item_available?
					item_ = {
						:id => item.id,
						:name => item.item_name,
						:description => item.item_description,
						:available => item.item_available,
						:category => item.item_category,
						:price => parent.item_price.ceil + item.item_price.ceil
					}
					items.push(item_)
				end
			end
		end
		render :json => items
	end

	def view
		item = Items.find_by_id(params[:id])
		if item.nil?
			item_ = { :error => 'Item not found' }
		else
			item_ = {
				:id => item.id,
				:name => item.item_name,
				:description => item.item_description,
				:available => item.item_available,
				:category => item.item_category,
				:price => item.item_price.ceil
			}
			if item.item_parent_id > 0
				parent = Items.find(item.item_parent_id)
				item_[:price] = parent.item_price.ceil + item.item_price.ceil
			end
		end
		render :json => item_
	end

end