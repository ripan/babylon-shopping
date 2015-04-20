require 'rails_helper'

RSpec.describe "promotional_rules/index", :type => :view do
  before(:each) do
    assign(:promotional_rules, [
      PromotionalRule.create!(
        :product_id => "Product",
        :quantity => "Quantity",
        :discount_percentage => "Discount Percentage",
        :discount_price => "Discount Price"
      ),
      PromotionalRule.create!(
        :product_id => "Product",
        :quantity => "Quantity",
        :discount_percentage => "Discount Percentage",
        :discount_price => "Discount Price"
      )
    ])
  end

  it "renders a list of promotional_rules" do
    render
    assert_select "tr>td", :text => "Product".to_s, :count => 2
    assert_select "tr>td", :text => "Quantity".to_s, :count => 2
    assert_select "tr>td", :text => "Discount Percentage".to_s, :count => 2
    assert_select "tr>td", :text => "Discount Price".to_s, :count => 2
  end
end
