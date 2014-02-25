class SalesController < ApplicationController

	include SaleSession

	def new
		@product = Product.from(current_admin.company).search(params[:q]).first
	end
	
end
