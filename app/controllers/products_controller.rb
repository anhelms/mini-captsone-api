class ProductsController < ApplicationController
    # def get_one_product
    #     product = Product.find_by(id: 1)
    #     render template: "products/show"
    # end

    def get_all_products
        @products = Product.all
        render template: "products/index"
    end

    #   def first_product
    #     products = Product.first
    #     render json: product.as_json
    # end

    # def second_product
    #     products = Product.second
    #     render json: product.as_json
    # end

    # def third_product
    #     products = Product.third
    #     render json: product.as_json
    # end

    def one_product
        @product = Product.find_by(id: params["id"])
        render template: "products/show"
    end
end
