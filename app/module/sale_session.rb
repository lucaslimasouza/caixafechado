module SaleSession
	def add_products
		initialize_products_sale_on_session
		@products_sale << params[:id]
		admin_session[:products_sale] = @products_sale
		redirect_to new_sale_path
	end
end