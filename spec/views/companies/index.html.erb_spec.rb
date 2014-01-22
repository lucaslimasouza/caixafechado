require 'spec_helper'

describe "companies/index" do
  before(:each) do
    assign(:companies, [
      stub_model(Company,
        :name => "Name",
        :cnpj => "Cnpj",
        :phone => "Phone",
        :address => "Address",
        :number => "Number",
        :cep => "Cep"
      ),
      stub_model(Company,
        :name => "Name",
        :cnpj => "Cnpj",
        :phone => "Phone",
        :address => "Address",
        :number => "Number",
        :cep => "Cep"
      )
    ])
  end

  it "renders a list of companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
  end
end
