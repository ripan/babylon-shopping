json.array!(@products) do |product|
  json.extract! product, :id, :code, :name, :description, :price
  json.url product_url(product, format: :json)
end
