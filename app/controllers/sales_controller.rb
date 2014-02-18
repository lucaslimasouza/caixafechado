class SalesController < ApplicationController

	def add_products
		initialize_products_sale_on_session
		@products_sale << params[:id]
		admin_session[:products_sale] = @products_sale
		redirect_to new_sale_path
	end

	def new
		@product = Product.from(current_admin.company).search(params[:q]).first
	end

	private
	def initialize_products_sale_on_session
		admin_session[:products_sale].present? ? 
			@products_sale = admin_session[:products_sale] : 
				@products_sale = Array.new
	end
	
end
