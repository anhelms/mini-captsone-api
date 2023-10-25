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
product = Product.new(name: "Silver Satin Pothos", price: 10.00 , image_url: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRcY-ETWWVoi1LKsG-zCZGd3xMdVMw1oz6j0ctQGK6poK5WZC53Gqht84lZg51PIiLbd-XB3EX3F419T8CPrG27XoaAJRylnY2mXdiruGd4M87dvwtqZhKopQ&usqp=CAE", description: " With tear or heart-shaped leaves, the Silver Satin Pothos puts out colorful and satin-like foliage. Its soft texture and vining nature add to the aesthetic appeal of this houseplant. Capable of growing 4-8 feet long while indoors, this plant can be a fun addition to your home.")
product.save
product = Product.new(name: "Saguaro Cactus", price: 155.00 , image_url: "https://www.cactusoutlet.com/cdn/shop/products/CM-Saguaro-Product-Main-V1.0_5000x.jpg?v=1643687569", description: "Also known as Carnegia gigantea. The massive iconic sentinel of the Sonoran desert grows up to 30 feet tall and features multiple arms. This cactus can handle moderate periods of frost down to 25 degrees fahrenheit. Available shipped to your door from one foot tall all the way up to six feet tall.")
product.save
puts "All done!"