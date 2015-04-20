json.array!(@carts_products) do |carts_product|
  json.extract! carts_product, :id, :cart_id, :product_id, :quantity
  json.url carts_product_url(carts_product, format: :json)
end
