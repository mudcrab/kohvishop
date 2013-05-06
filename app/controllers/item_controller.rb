class ItemController < ApplicationController

	def all
		items = Array.new
		Items.all.each do |item|
			option = Options.find(item.id)
			item['option'] = option
			items.push(item)
		end
		render :json => items
	end

	def by_category
		items = Array.new
		Items.where("item_category = ?", params[:category]).each do |item|
			option = Options.find(item.id)
			item['option'] = option
			items.push(item)
		end
		render :json => items
	end

	def view

	end

end