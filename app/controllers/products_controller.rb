class ProductsController < ApplicationController
    def index
        @products = Product.all 
        render template: "products/index"
    end
    def show
        @product = Product.find_by(id: params["id"])
        render template: "products/show"
    end
    def create
        @product = Product.create(
            name: "Persian ivy", 
            price: 20.00, 
            image_url: "https://fossilcreektreefarm.com/cdn/shop/products/PersianIvy.jpg?v=1676581590", 
            description: "It is an evergreen climbing plant, growing to 30 m high where suitable surfaces 
            are available, and also growing as ground cover where there are no vertical surfaces.")
        render template: "products/show"
    end
end
