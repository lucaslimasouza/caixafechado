require 'spec_helper'

describe PainelMainController do

	login_admin

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end
  end

end
