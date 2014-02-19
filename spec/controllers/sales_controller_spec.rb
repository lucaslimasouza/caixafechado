require 'spec_helper'

describe SalesController do
	
	login_admin

	describe "GET" do
		let(:product) { create(:product) }
		let(:sale_on_session) { subject.admin_session[:products_sale] }
		let(:second_product) { create(:product) }
	  
	  context '#add_products' do

	  	it "should redirect to new template" do
	  			get :add_products, id: product.id

	  			subject.should redirect_to new_sale_path
	  	end

			it "should have one product on sale admin" do
				get :add_products, id: product.id

				expect(sale_on_session.size).to be_equal 1				
			end

			it "should not overwrite some product added" do
				get :add_products, id: product.id
				get :add_products, id: second_product.id

				expect(sale_on_session.size).to be_equal 2 
			end

	  end

	  context '#cancel_products' do

	  	it "should redirect to edit tamplete" do
	  		allow_message_expectations_on_nil
	  		allow(nil).to receive(:delete_if).and_return([])
	  		
	  		get :cancel_product, id: product.id

	  		expect(subject).to redirect_to edit_sale_path
	  	end

	  	it "should have anyone product on sale admin" do
	  		get :add_products, id: product.id
	  		get :cancel_product, id: product.id

	  		expect(sale_on_session.size).to be_equal 0
	  	end

	  	it "should have only one product on sale admin" do
	  		get :add_products, id: product.id
	  		get :add_products, id: second_product.id

	  		get :cancel_product, id: product.id

	  		expect(sale_on_session.size).to be_equal 1
	  	end
	  end

	  context '#new' do
	  	it "should have template new" do
	  		get :new

	  		subject.should render_template :new
	  	end
	  end

		context '#cancel_sale' do
			it "should redirect_to new template" do
				get :cancel_sale

				expect(subject).to redirect_to new_sale_path
			end
			it "should cancel products_sale on session" do
				get :add_products, id: product.id
				get :cancel_sale

				expect(sale_on_session).to be_nil
			end
		end
	end

end
