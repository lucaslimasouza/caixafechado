require 'spec_helper'

describe "companies/edit" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "MyString",
      :cnpj => "MyString",
      :phone => "MyString",
      :address => "MyString",
      :number => "MyString",
      :cep => "MyString"
    ))
  end

  it "renders the edit company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", company_path(@company), "post" do
      assert_select "input#company_name[name=?]", "company[name]"
      assert_select "input#company_cnpj[name=?]", "company[cnpj]"
      assert_select "input#company_phone[name=?]", "company[phone]"
      assert_select "input#company_address[name=?]", "company[address]"
      assert_select "input#company_number[name=?]", "company[number]"
      assert_select "input#company_cep[name=?]", "company[cep]"
    end
  end
end
