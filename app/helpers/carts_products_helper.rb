module CartsProductsHelper
  def get_discounted_product_price(quantity,product)
    if quantity > 1
      pr = PromotionalRule.find(product.id)
      price = pr.discount_price
    else
      price = product.price
    end
    return price
  end
end
