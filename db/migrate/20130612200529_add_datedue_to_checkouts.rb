class AddDatedueToCheckouts < ActiveRecord::Migration
  def change
  	change_table :checkouts do |t|
      	t.date :checkout_date_due
	end
  end
end
