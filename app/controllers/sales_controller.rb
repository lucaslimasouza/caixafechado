class SalesController < ApplicationController

	def add_products
		initialize_sale_on_session
		@sale.products << Product.find(params[:id])
		admin_session[:sale] = @sale
		redirect_to new_sale_path
	end

	private
	def initialize_sale_on_session
		admin_session[:sale].present? ? 
			@sale = admin_session[:sale] : 
				@sale = current_admin.company.sales.build
	end
	
end
