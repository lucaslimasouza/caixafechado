require 'spec_helper'

describe Product do
  
  context 'attributes' do
  	it { should respond_to(:code) }
  	it { should respond_to(:name) }
  	it { should respond_to(:cost) }
  	it { should respond_to(:price) }
  	it { should respond_to(:description) }
  	it { should respond_to(:quantity) }
  end

  context 'validates presence' do
  	it { should validate_presence_of(:code) }
  	it { should validate_presence_of(:name) }
  	it { should validate_presence_of(:cost) }
  	it { should validate_presence_of(:price) }
  	it { should validate_presence_of(:description) }
  	it { should validate_presence_of(:quantity) }
  end

  context 'validate numecality' do
    it { should validate_numericality_of(:code) }
    it { should validate_numericality_of(:cost) }
    it { should validate_numericality_of(:price) }
    it { should validate_numericality_of(:quantity) }
  end

  context 'association' do
  	it { should belong_to(:company) }
    it { should have_and_belong_to_many(:sales) }
  end

  context 'scope #from' do
    it "should return products from a specific Company" do
      company = create(:company)
      product = build(:product)
      product.company = company
      product.save
      expect(Product.from(company).first.company).to be_eql company
    end

  end

  context '#search' do
    it "should return product by code" do
      product = create(:product) 
      
      expect(Product.search(product.code).first.code).to be_eql(product.code)
    end

    it "should return all products when code is nill" do
      product = create(:product)
      second_product = create(:product)

      expect(Product.search("").size).to be_eql 2
    end

  end

end
