require 'spec_helper'

describe "companies/new" do
  before(:each) do
    assign(:company, stub_model(Company,
      :name => "MyString",
      :cnpj => "MyString",
      :phone => "MyString",
      :address => "MyString",
      :number => "MyString",
      :cep => "MyString"
    ).as_new_record)
  end

  it "renders new company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", companies_path, "post" do
      assert_select "input#company_name[name=?]", "company[name]"
      assert_select "input#company_cnpj[name=?]", "company[cnpj]"
      assert_select "input#company_phone[name=?]", "company[phone]"
      assert_select "input#company_address[name=?]", "company[address]"
      assert_select "input#company_number[name=?]", "company[number]"
      assert_select "input#company_cep[name=?]", "company[cep]"
    end
  end
end
