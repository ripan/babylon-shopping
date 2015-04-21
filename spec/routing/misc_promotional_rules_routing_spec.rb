require "rails_helper"

RSpec.describe MiscPromotionalRulesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/misc_promotional_rules").to route_to("misc_promotional_rules#index")
    end

    it "routes to #new" do
      expect(:get => "/misc_promotional_rules/new").to route_to("misc_promotional_rules#new")
    end

    it "routes to #show" do
      expect(:get => "/misc_promotional_rules/1").to route_to("misc_promotional_rules#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/misc_promotional_rules/1/edit").to route_to("misc_promotional_rules#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/misc_promotional_rules").to route_to("misc_promotional_rules#create")
    end

    it "routes to #update" do
      expect(:put => "/misc_promotional_rules/1").to route_to("misc_promotional_rules#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/misc_promotional_rules/1").to route_to("misc_promotional_rules#destroy", :id => "1")
    end

  end
end
