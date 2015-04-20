require 'rails_helper'

RSpec.describe "carts/show", :type => :view do
  before(:each) do
    @cart = assign(:cart, Cart.create!(
      :quantity => 1,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
