require 'spec_helper'

describe SalesController do
	
	login_admin

	describe "GET" do
	  
	  context '#add_products' do

			let(:product) { create(:product) }
			let(:second_product) { create(:product) }
			let(:sale_on_session) { subject.admin_session[:sale] }

	  	it "should redirect to new template" do
	  			get :add_products, id: product.id

	  			subject.should redirect_to new_sale_path
	  	end

			it "should have one product on sale admin_session" do
				get :add_products, id: product.id

				expect(sale_on_session.products.size).to be_equal 1				
			end

			it "should not overwrite some product added" do
				get :add_products, id: product.id
				get :add_products, id: second_product

				expect(sale_on_session.products.size).to be_equal 2 
			end
	  end
	end

end
