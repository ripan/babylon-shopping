json.array!(@promotional_rules) do |promotional_rule|
  json.extract! promotional_rule, :id, :product_id, :quantity, :discount_percentage, :discount_price
  json.url promotional_rule_url(promotional_rule, format: :json)
end
