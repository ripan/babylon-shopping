require 'rails_helper'

RSpec.describe "carts_products/show", :type => :view do
  before(:each) do
    @carts_product = assign(:carts_product, CartsProduct.create!(
      :cart_id => 1,
      :product_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
