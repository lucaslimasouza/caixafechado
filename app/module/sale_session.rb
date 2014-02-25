module SaleSession
	
	def add_products
		initialize_products_sale_on_session
		@products_sale << params[:id]
		admin_session[:products_sale] = @products_sale
		redirect_to new_sale_path
	end

	def cancel_product
		admin_session[:products_sale].delete_if { |id| id == params[:id] }
		redirect_to new_sale_path		
	end
end