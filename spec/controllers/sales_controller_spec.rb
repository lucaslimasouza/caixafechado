require 'spec_helper'

describe SalesController do

	describe "GET" do
	  
	  context '#add_products' do
	  	it "should have resource add products" do
	  			get :add_products
	  			expect{ subject }.to raise_error(ActionView::MissingTemplate)
	  	end
	  end
	end

end
