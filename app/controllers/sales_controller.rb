class SalesController < ApplicationController

	include SaleSession

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
