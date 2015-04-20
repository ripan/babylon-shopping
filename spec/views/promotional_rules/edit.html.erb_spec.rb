require 'rails_helper'

RSpec.describe "promotional_rules/edit", :type => :view do
  before(:each) do
    @promotional_rule = assign(:promotional_rule, PromotionalRule.create!(
      :product_id => "MyString",
      :quantity => "MyString",
      :discount_percentage => "MyString",
      :discount_price => "MyString"
    ))
  end

  it "renders the edit promotional_rule form" do
    render

    assert_select "form[action=?][method=?]", promotional_rule_path(@promotional_rule), "post" do

      assert_select "input#promotional_rule_product_id[name=?]", "promotional_rule[product_id]"

      assert_select "input#promotional_rule_quantity[name=?]", "promotional_rule[quantity]"

      assert_select "input#promotional_rule_discount_percentage[name=?]", "promotional_rule[discount_percentage]"

      assert_select "input#promotional_rule_discount_price[name=?]", "promotional_rule[discount_price]"
    end
  end
end
