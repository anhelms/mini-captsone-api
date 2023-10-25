# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeds are seeding..."
product = Product.new(name: "Monstera", price: 35.00 , image_url: "https://m.media-amazon.com/images/I/71jMNU6tWdL._AC_SX679_.jpg", description: "The Swiss cheese plant, or Mexican breadfruit (Monstera deliciosa), is a common houseplant with showy, glossy, perforated leaves slashed to the margins; numerous horticultural varieties have been developed. When fully ripe, its sweet scaly fruit is edible and tastes like a combination of pineapple and mango. All other parts of the plant, including the unripe fruit, contain calcium oxalate and are considered mildly toxic if ingested by humans.")
product.save
product = Product.new(name: "Pothos", price: 10.00 , image_url: "https://m.media-amazon.com/images/I/71jMNU6tWdL._AC_SX679_.jpg", description: "The Swiss cheese plant, or Mexican breadfruit (Monstera deliciosa), is a common houseplant with showy, glossy, perforated leaves slashed to the margins; numerous horticultural varieties have been developed. When fully ripe, its sweet scaly fruit is edible and tastes like a combination of pineapple and mango. All other parts of the plant, including the unripe fruit, contain calcium oxalate and are considered mildly toxic if ingested by humans.")
product.save
product = Product.new(name: "Cactus", price: 55.00 , image_url: "https://m.media-amazon.com/images/I/71jMNU6tWdL._AC_SX679_.jpg", description: "The Swiss cheese plant, or Mexican breadfruit (Monstera deliciosa), is a common houseplant with showy, glossy, perforated leaves slashed to the margins; numerous horticultural varieties have been developed. When fully ripe, its sweet scaly fruit is edible and tastes like a combination of pineapple and mango. All other parts of the plant, including the unripe fruit, contain calcium oxalate and are considered mildly toxic if ingested by humans.")
product.save
puts "All done!"