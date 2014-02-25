class SalesController < ApplicationController

	include SaleSession

	def new
		@product = Product.from(current_admin.company).search(params[:q]).first
	end

	def cancel_product
		admin_session[:products_sale].delete_if { |id| id == params[:id] }
		redirect_to new_sale_path		
	end

	def cancel
		admin_session[:products_sale] = nil
		redirect_to new_sale_path
	end

	private
	def initialize_products_sale_on_session
		admin_session[:products_sale].present? ? 
			@products_sale = admin_session[:products_sale] : 
				@products_sale = Array.new
	end
	
end
