class SalesController < ApplicationController

	def add_products
		redirect_to new_sale_path
	end
	
end
