require 'rails_helper'

RSpec.describe "PromotionalRules", :type => :request do
  describe "GET /promotional_rules" do
    it "works! (now write some real specs)" do
      get promotional_rules_path
      expect(response.status).to be(200)
    end
  end
end
