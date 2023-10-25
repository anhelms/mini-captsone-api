class ProductsController < ApplicationController
    def get_one_product
        product = Product.find_by(id: 1)
        render json: product.as_json
    end

    def get_all_products
        products = Product.all
        render json: products.as_json
    end

    #   def first_product
    #     products = Product.first
    #     render json: products.as_json
    # end

    # def second_product
    #     products = Product.second
    #     render json: products.as_json
    # end

    # def third_product
    #     products = Product.third
    #     render json: products.as_json
    # end

    def one_product
        product = Product.find_by(id: params["id"])
        render json: products.as_json
    end
end
