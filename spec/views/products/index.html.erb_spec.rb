require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :code => "Code",
        :name => "Name",
        :cost => "Cost",
        :price => "Price",
        :quantity => "Quantity",
        :description => "Description"
      ),
      stub_model(Product,
        :code => "Code",
        :name => "Name",
        :cost => "Cost",
        :price => "Price",
        :quantity => "Quantity",
        :description => "Description"
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cost".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Quantity".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
