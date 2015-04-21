require 'rails_helper'

RSpec.describe "misc_promotional_rules/index", :type => :view do
  before(:each) do
    assign(:misc_promotional_rules, [
      MiscPromotionalRule.create!(
        :name => "Name",
        :discount_percentage => "Discount Percentage",
        :discount_price => "Discount Price"
      ),
      MiscPromotionalRule.create!(
        :name => "Name",
        :discount_percentage => "Discount Percentage",
        :discount_price => "Discount Price"
      )
    ])
  end

  it "renders a list of misc_promotional_rules" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Discount Percentage".to_s, :count => 2
    assert_select "tr>td", :text => "Discount Price".to_s, :count => 2
  end
end
