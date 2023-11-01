Supplier.create!([
  {name: "Monrovia", email: "plantsrule@example.com", phone_number: "555-555-5555"},
  {name: "Lowes", email: "betterthanhomedepot@example.com", phone_number: "444-444-4444"},
  {name: "Silverlake Botany", email: "slbotany@example.com", phone_number: "222-222-2222"},
  {name: "Monrovia", email: "plantsrule@example.com", phone_number: "555-555-5555"},
  {name: "Lowes", email: "betterthanhomedepot@example.com", phone_number: "444-444-4444"},
  {name: "Silverlake Botany", email: "slbotany@example.com", phone_number: "222-222-2222"}
])
Product.create!([
  {name: "Monstera", price: "35.0", image_url: "https://m.media-amazon.com/images/I/71jMNU6tWdL._AC_SX679_.jpg", description: "The Swiss cheese plant, or Mexican breadfruit (Monstera deliciosa), is a common houseplant with showy, glossy, perforated leaves slashed to the margins; numerous horticultural varieties have been developed. When fully ripe, its sweet scaly fruit is edible and tastes like a combination of pineapple and mango. All other parts of the plant, including the unripe fruit, contain calcium oxalate and are considered mildly toxic if ingested by humans.", inventory: nil, active_status: true, supplier_id: 1},
  {name: "Saguaro Cactus", price: "155.0", image_url: "https://www.cactusoutlet.com/cdn/shop/products/CM-Saguaro-Product-Main-V1.0_5000x.jpg?v=1643687569", description: "Also known as Carnegia gigantea. The massive iconic sentinel of the Sonoran desert grows up to 30 feet tall and features multiple arms. This cactus can handle moderate periods of frost down to 25 degrees fahrenheit. Available shipped to your door from one foot tall all the way up to six feet tall.", inventory: nil, active_status: true, supplier_id: 3},
  {name: "Silver Satin Pothos", price: "10.0", image_url: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRcY-ETWWVoi1LKsG-zCZGd3xMdVMw1oz6j0ctQGK6poK5WZC53Gqht84lZg51PIiLbd-XB3EX3F419T8CPrG27XoaAJRylnY2mXdiruGd4M87dvwtqZhKopQ&usqp=CAE", description: " With tear or heart-shaped leaves, the Silver Satin Pothos puts out colorful and satin-like foliage. Its soft texture and vining nature add to the aesthetic appeal of this houseplant. Capable of growing 4-8 feet long while indoors, this plant can be a fun addition to your home.", inventory: nil, active_status: true, supplier_id: 2}
])
