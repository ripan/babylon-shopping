require 'rails_helper'

RSpec.describe "CartsProducts", :type => :request do
  describe "GET /carts_products" do
    it "works! (now write some real specs)" do
      get carts_products_path
      expect(response.status).to be(200)
    end
  end
end
