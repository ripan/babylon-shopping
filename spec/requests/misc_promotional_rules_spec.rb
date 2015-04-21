require 'rails_helper'

RSpec.describe "MiscPromotionalRules", :type => :request do
  describe "GET /misc_promotional_rules" do
    it "works! (now write some real specs)" do
      get misc_promotional_rules_path
      expect(response.status).to be(200)
    end
  end
end
