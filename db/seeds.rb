# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


products = [
  {
    code: "001",
    name: "Lavender heart",
    description: "Lavender heart",
    price: "9.25",

  },
  {
    code: "002",
    name: "Personalised cufflinks",
    description: "Personalised cufflinks",
    price: "45.00",

  },
  {
    code: "003",
    name: "Kids T-shirt",
    description: "Kids T-shirt",
    price: "19.95",

  },
]


products.each do |product|

  Product.create(
    code: product[:code],
    name:  product[:name],
    description:  product[:description],
    price:  product[:price],
  )

end
