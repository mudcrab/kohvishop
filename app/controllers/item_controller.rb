class ItemController < ApplicationController

	def all
		#test = {'something' => 'else', 'test' => [1, 2, 3]}
		items = Array.new
		Items.all.each do |item|
			option = Options.find(item.id)
			item['option'] = option
			items.push(item)
		end
		render :json => items
	end

	def by_category

	end

	def view

	end

end