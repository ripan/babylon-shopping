require 'rails_helper'

RSpec.describe "carts/new", :type => :view do
  before(:each) do
    assign(:cart, Cart.new(
      :quantity => 1,
      :user => nil
    ))
  end

  it "renders new cart form" do
    render

    assert_select "form[action=?][method=?]", carts_path, "post" do

      assert_select "input#cart_quantity[name=?]", "cart[quantity]"

      assert_select "input#cart_user_id[name=?]", "cart[user_id]"
    end
  end
end
