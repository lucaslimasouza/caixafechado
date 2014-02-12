require 'spec_helper'

describe Sale do
  
  context 'attributes' do
  	it { should respond_to(:change) }
  	it { should respond_to(:value_received) }
  	it { should respond_to(:total) }
  end

  context 'associations' do
  	it { should belong_to(:company) }
  	it { should have_and_belong_to_many(:products) }
  end
end
