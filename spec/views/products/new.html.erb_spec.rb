require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :code => "MyString",
      :name => "MyString",
      :cost => "MyString",
      :price => "MyString",
      :quantity => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", products_path, "post" do
      assert_select "input#product_code[name=?]", "product[code]"
      assert_select "input#product_name[name=?]", "product[name]"
      assert_select "input#product_cost[name=?]", "product[cost]"
      assert_select "input#product_price[name=?]", "product[price]"
      assert_select "input#product_quantity[name=?]", "product[quantity]"
      assert_select "input#product_description[name=?]", "product[description]"
    end
  end
end
