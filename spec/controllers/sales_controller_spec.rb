require 'spec_helper'

describe SalesController do

	describe "GET" do
	  
	  context '#add_products' do
	  	it "should redirect to new template" do
	  			get :add_products
	  			
	  			subject.should redirect_to new_sale_path
	  	end

			it "should have one product one session[:sale]" do
				get :add_products, id: 1

				expect(session[:sale].products.size).to be_equal 1				
			end
	  end
	end

end
