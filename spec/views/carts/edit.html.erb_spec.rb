require 'rails_helper'

RSpec.describe "carts/edit", :type => :view do
  before(:each) do
    @cart = assign(:cart, Cart.create!(
      :quantity => 1,
      :user => nil
    ))
  end

  it "renders the edit cart form" do
    render

    assert_select "form[action=?][method=?]", cart_path(@cart), "post" do

      assert_select "input#cart_quantity[name=?]", "cart[quantity]"

      assert_select "input#cart_user_id[name=?]", "cart[user_id]"
    end
  end
end
