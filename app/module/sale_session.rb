module SaleSession

	def add_products
		initialize_products_sale_on_session
		initialize_total_on_session
		@products_sale << params[:id]
		admin_session[:products_sale] = @products_sale
		add_price_on_total
		redirect_to new_sale_path
	end

	def cancel_product
		admin_session[:products_sale].delete_if { |id| id == params[:id] }
		redirect_to new_sale_path		
	end

	def cancel
		admin_session[:products_sale] = nil
		redirect_to new_sale_path
	end

	protected
	def initialize_products_sale_on_session
		admin_session[:products_sale].present? ?
			@products_sale = admin_session[:products_sale] :
				@products_sale = Array.new
	end

	def add_price_on_total
		admin_session[:total_sale] += Product.find(params[:id]).price.to_f
	end

	def initialize_total_on_session
			unless admin_session[:total_sale].present? 
				admin_session[:total_sale] = 0.0
			end
	end

end