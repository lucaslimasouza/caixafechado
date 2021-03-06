require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :code => "Code",
      :name => "Name",
      :cost => "Cost",
      :price => "Price",
      :quantity => "Quantity",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Cost/)
    expect(rendered).to match(/Price/)
    expect(rendered).to match(/Quantity/)
    expect(rendered).to match(/Description/)
  end
end
