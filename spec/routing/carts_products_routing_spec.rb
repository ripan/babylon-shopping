require "rails_helper"

RSpec.describe CartsProductsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/carts_products").to route_to("carts_products#index")
    end

    it "routes to #new" do
      expect(:get => "/carts_products/new").to route_to("carts_products#new")
    end

    it "routes to #show" do
      expect(:get => "/carts_products/1").to route_to("carts_products#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/carts_products/1/edit").to route_to("carts_products#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/carts_products").to route_to("carts_products#create")
    end

    it "routes to #update" do
      expect(:put => "/carts_products/1").to route_to("carts_products#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/carts_products/1").to route_to("carts_products#destroy", :id => "1")
    end

  end
end
