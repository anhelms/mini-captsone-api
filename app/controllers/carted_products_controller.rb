class CartedProductsController < ApplicationController
    def index
        @carted_products = current_user.carted_products.where(status: "carted")
        render :index
    end    
    
    def create
        @carted_product = CartedProduct.create(
          user_id: current_user.id,
          product_id: params[:product_id],
          quantity: params[:quantity],
          status: "carted",
          order_id: nil
        )

        if @carted_product.valid?
            render :show
        else
            render json: {errors: @carted_product.errors.full_messages}, status: 422
        end
    end

    def show
        @carted_product = CartedProduct.find_by(id: params[:id])
        render :show
    end

    def update
        @carted_product = CartedProduct.find_by(id: params[:id])
        @carted_product.update(
          user_id: params[:user_id] || @carted_product.user_id,
          product_id: params[:product_id] || @carted_product.product_id,
          quantity: params[:quantity] || @carted_product.quantity,
          order_id: params[:order_id] || @carted_product.order_id,
          status: params[:status] || @carted_product.status,
        )
        render :show
    end

    def destroy
        carted_product = current_user.carted_products.find_by(id: params[:id], status: "carted")
        carted_product.update(status: "removed")
        render json: {status: "Carted item removed"}
    end
end
