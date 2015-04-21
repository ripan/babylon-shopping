json.array!(@misc_promotional_rules) do |misc_promotional_rule|
  json.extract! misc_promotional_rule, :id, :name, :discount_percentage, :discount_price
  json.url misc_promotional_rule_url(misc_promotional_rule, format: :json)
end
