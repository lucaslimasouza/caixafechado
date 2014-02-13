class SalesController < ApplicationController

	def add_products
		@sale = Sale.new
		@sale.products << Product.new(id: params[:id])
		session[:sale] = @sale
		redirect_to new_sale_path
	end
	
end
