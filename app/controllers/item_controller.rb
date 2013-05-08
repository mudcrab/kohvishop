class ItemController < ApplicationController

	def all
		items = Array.new
		options = Options.all
		Items.find_each do |item|
			item_ = 
			{
				'id' => item.id,
				'name' => item.item_name,
				'description' => item.item_description,
				'available' => item.item_available,
				'category' => item.item_category,
				'options' => Array.new
			}
			options.each do |option|
				if option.item_id == item.id
					item_["options"].push({ 'description' => option.option_description, 'name' => option.option_name,
									'price' => option.option_price, 'quantity' => option.option_quantity })
				end
			end
			items.push(item_)
		end
		render :json => items
	end

	def by_category
		items = Array.new
		options = Options.all
		Items.find_each do |item|
			if item.item_category == params[:category]
				item_ = 
				{
					'id' => item.id,
					'name' => item.item_name,
					'description' => item.item_description,
					'available' => item.item_available,
					'category' => item.item_category,
					'options' => Array.new
				}
				options.each do |option|
					if item.id == option.item_id
						item_["options"].push({ 'description' => option.option_description, 'name' => option.option_name,
									'price' => option.option_price, 'quantity' => option.option_quantity })
					end
				end
				items.push(item_)
			end
		end
		render :json => items
	end

	def view
		item = Items.find(params[:id])
		item_ = 
		{
			'id' => item.id,
			'name' => item.item_name,
			'description' => item.item_description,
			'available' => item.item_available,
			'category' => item.item_category,
			'options' => Array.new
		}
		Options.find(:all, :conditions => { :item_id => item.id }).each do |option|
			item_["options"].push({ 'description' => option.option_description, 'name' => option.option_name,
									'price' => option.option_price, 'quantity' => option.option_quantity })
		end
		render :json => item_
	end

end