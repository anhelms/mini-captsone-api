#   supplier1 = Supplier.create!({name: "Monrovia", email: "plantsrule@example.com", phone_number: "555-555-5555"})
#   supplier2 = Supplier.create!({name: "Lowes", email: "betterthanhomedepot@example.com", phone_number: "444-444-4444"})
#   supplier3 = Supplier.create!({name: "Silverlake Botany", email: "slbotany@example.com", phone_number: "222-222-2222"})

#   product1 = Product.create! ({name: "Monstera", price: "35.0", description: "The Swiss cheese plant, or Mexican breadfruit (Monstera deliciosa), is a common houseplant with showy, glossy, perforated leaves slashed to the margins; numerous horticultural varieties have been developed. When fully ripe, its sweet scaly fruit is edible and tastes like a combination of pineapple and mango. All other parts of the plant, including the unripe fruit, contain calcium oxalate and are considered mildly toxic if ingested by humans.", inventory: nil, active_status: true, supplier_id: supplier1.id})

#   Product.create!([
#   {name: "Monstera", price: "35.0", description: "The Swiss cheese plant, or Mexican breadfruit (Monstera deliciosa), is a common houseplant with showy, glossy, perforated leaves slashed to the margins; numerous horticultural varieties have been developed. When fully ripe, its sweet scaly fruit is edible and tastes like a combination of pineapple and mango. All other parts of the plant, including the unripe fruit, contain calcium oxalate and are considered mildly toxic if ingested by humans.", inventory: nil, active_status: true, supplier_id: supplier1.id},
#   {name: "Saguaro Cactus", price: "155.0", description: "Also known as Carnegia gigantea. The massive iconic sentinel of the Sonoran desert grows up to 30 feet tall and features multiple arms. This cactus can handle moderate periods of frost down to 25 degrees fahrenheit. Available shipped to your door from one foot tall all the way up to six feet tall.", inventory: nil, active_status: true, supplier_id: supplier3.id},
#   {name: "Silver Satin Pothos", price: "10.0", description: " With tear or heart-shaped leaves, the Silver Satin Pothos puts out colorful and satin-like foliage. Its soft texture and vining nature add to the aesthetic appeal of this houseplant. Capable of growing 4-8 feet long while indoors, this plant can be a fun addition to your home.", inventory: nil, active_status: true, supplier_id: supplier2.id}
# ])

# Image.create!(url: "test.jpg", product_id: product1_id)

category1 = Category.create!(name: "indoor")
category2 = Category.create!(name: "outdoor")

category_products1 = CategoryProduct.create!(category_id: 1, product_id: 1)
category_products2 = CategoryProduct.create!(category_id: 2, product_id: 2)

carted_products1 = CartedProduct.create!(user_id: 1, product_id: 1, quantity: 1, status: "carted", order_id: 1)
carted_products2 = CartedProduct.create!(user_id: 2, product_id: 2, quantity: 1, status: "carted", order_id: 2)