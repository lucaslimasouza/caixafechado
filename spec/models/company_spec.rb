require 'spec_helper'

describe Company do

  context "association" do
    it { should belong_to(:admin) }
    it { should have_many(:products) }
    it { should have_many(:sales) }
  end

  context "attributes" do
    it { should respond_to(:name) }
    it { should respond_to(:cnpj) }
    it { should respond_to(:address) }
    it { should respond_to(:number) }
    it { should respond_to(:cep) }
    it { should respond_to(:phone) }
  end

  context "validate presence" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:cnpj) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:number) }
    it { should validate_presence_of(:cep) }
    it { should validate_presence_of(:phone) }
  end

  context "validate numericality" do
    it { should validate_numericality_of(:number) }
    it { should validate_numericality_of(:cep) }
    it { should validate_numericality_of(:cnpj) }
  end

end
