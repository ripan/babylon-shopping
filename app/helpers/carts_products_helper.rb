module CartsProductsHelper
  def get_discounted_product_price(quantity,product)
  	price = product.price
    if quantity > 1
      pr = PromotionalRule.find_by_product_id(product.id)
      price = pr.discount_price if pr
    end
    return price
  end
end
