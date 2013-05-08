class ItemController < ApplicationController

	def all
		items = Array.new
		Items.find_each do |item|
			option = Options.find(item.id)
			item_ = 
			{
				'id' => item.id,
				'name' => item.item_name,
				'description' => item.item_description,
				'available' => item.item_available,
				'category' => item.item_category,
				'options' => {
					'item_id' => option.item_id,
					'description' => option.option_description,
					'name' => option.option_name,
					'price' => option.option_price,
					'quantity' => option.option_quantity
				}
			}
			items.push(item_)
		end
		render :json => items
	end

	def by_category
		items = Array.new
		options = Options.all
		Items.find_each do |item|
			if item.item_category == params[:category]
				options.each do |option|
					if item.id == option.item_id
						item_ = 
						{
							'id' => item.id,
							'name' => item.item_name,
							'description' => item.item_description,
							'available' => item.item_available,
							'category' => item.item_category,
							'options' => {
								'item_id' => option.item_id,
								'description' => option.option_description,
								'name' => option.option_name,
								'price' => option.option_price,
								'quantity' => option.option_quantity
							}
						}
						items.push(item_)
					end
				end
			end
		end
		render :json => items
	end

	def view

	end

end