require 'spec_helper'

describe Admin do

  context "association" do
    it { should have_one(:company) }
  end

  context "accept nested attributes" do
    it { should accept_nested_attributes_for(:company).allow_destroy(true) }
  end
end
