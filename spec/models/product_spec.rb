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

  context 'association' do
  	it { should belong_to(:company) }
  end

end
