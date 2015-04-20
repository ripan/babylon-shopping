require 'rails_helper'

RSpec.describe "carts_products/new", :type => :view do
  before(:each) do
    assign(:carts_product, CartsProduct.new(
      :cart_id => 1,
      :product_id => 1,
      :quantity => 1
    ))
  end

  it "renders new carts_product form" do
    render

    assert_select "form[action=?][method=?]", carts_products_path, "post" do

      assert_select "input#carts_product_cart_id[name=?]", "carts_product[cart_id]"

      assert_select "input#carts_product_product_id[name=?]", "carts_product[product_id]"

      assert_select "input#carts_product_quantity[name=?]", "carts_product[quantity]"
    end
  end
end
