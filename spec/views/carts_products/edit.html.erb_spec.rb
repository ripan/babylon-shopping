require 'rails_helper'

RSpec.describe "carts_products/edit", :type => :view do
  before(:each) do
    @carts_product = assign(:carts_product, CartsProduct.create!(
      :cart_id => 1,
      :product_id => 1,
      :quantity => 1
    ))
  end

  it "renders the edit carts_product form" do
    render

    assert_select "form[action=?][method=?]", carts_product_path(@carts_product), "post" do

      assert_select "input#carts_product_cart_id[name=?]", "carts_product[cart_id]"

      assert_select "input#carts_product_product_id[name=?]", "carts_product[product_id]"

      assert_select "input#carts_product_quantity[name=?]", "carts_product[quantity]"
    end
  end
end
