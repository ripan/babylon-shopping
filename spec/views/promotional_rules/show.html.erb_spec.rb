require 'rails_helper'

RSpec.describe "promotional_rules/show", :type => :view do
  before(:each) do
    @promotional_rule = assign(:promotional_rule, PromotionalRule.create!(
      :product_id => "Product",
      :quantity => "Quantity",
      :discount_percentage => "Discount Percentage",
      :discount_price => "Discount Price"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Product/)
    expect(rendered).to match(/Quantity/)
    expect(rendered).to match(/Discount Percentage/)
    expect(rendered).to match(/Discount Price/)
  end
end
