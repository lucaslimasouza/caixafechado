require 'spec_helper'

describe SalesController do

	describe "GET" do
	  
	  context '#add_products' do
	  	it "should redirect to new template" do
	  			get :add_products
	  			subject.should redirect_to new_sale_path
	  	end

	  end
	end

end
