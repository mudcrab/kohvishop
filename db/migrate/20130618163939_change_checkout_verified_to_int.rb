class ChangeCheckoutVerifiedToInt < ActiveRecord::Migration
	def change
		change_column :checkouts, :checkout_verified, :integer, :default => 0
	end
end
