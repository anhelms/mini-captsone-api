Rails.application.routes.draw do
  # long way
  get "/one_product", controller: "products", action: "get_one_product"
  get "/all_products", controller: "products", action: "get_all_products"

  #short way
  # get "/first_product" => "products#first_product"
  # get "/second_product" => "products#second_product"
  # get "/third_product" => "products#third_product"
  get "/one_product/:id" => "products#one_product"
end
