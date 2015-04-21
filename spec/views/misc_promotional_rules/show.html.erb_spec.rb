require 'rails_helper'

RSpec.describe "misc_promotional_rules/show", :type => :view do
  before(:each) do
    @misc_promotional_rule = assign(:misc_promotional_rule, MiscPromotionalRule.create!(
      :name => "Name",
      :discount_percentage => "Discount Percentage",
      :discount_price => "Discount Price"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Discount Percentage/)
    expect(rendered).to match(/Discount Price/)
  end
end
