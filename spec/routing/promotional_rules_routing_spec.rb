require "rails_helper"

RSpec.describe PromotionalRulesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/promotional_rules").to route_to("promotional_rules#index")
    end

    it "routes to #new" do
      expect(:get => "/promotional_rules/new").to route_to("promotional_rules#new")
    end

    it "routes to #show" do
      expect(:get => "/promotional_rules/1").to route_to("promotional_rules#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/promotional_rules/1/edit").to route_to("promotional_rules#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/promotional_rules").to route_to("promotional_rules#create")
    end

    it "routes to #update" do
      expect(:put => "/promotional_rules/1").to route_to("promotional_rules#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/promotional_rules/1").to route_to("promotional_rules#destroy", :id => "1")
    end

  end
end
