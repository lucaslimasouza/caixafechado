class SalesController < ApplicationController

	def add_products
		@sale = current_admin.company.sales.build
		@sale.products << Product.new(id: params[:id])
		admin_session[:sale] = @sale
		redirect_to new_sale_path
	end
	
end
