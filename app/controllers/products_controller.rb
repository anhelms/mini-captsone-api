class ProductsController < ApplicationController
    before_action :authenticate_admin, except: [:index, :show]
    def index
        @products = Product.all 

        if params[:category]
            category = Category.find_by(name: params[:category])
            @product = category.products
        end

        render :index
    end

    def show
        @product = Product.find_by(id: params[:id])
        render :show
    end

    def create
        @product = Product.create(
            name: params[:name], 
            price: params[:price],
            description: params[:description],
            supplier_id: params[:supplier_id]
            )
        if @product.valid?
            Image.create(url:params[:image_url], product_id: @product.id)
            render :show
        else
            render json: {errors: @product.errors.full_messages}, status: 422
        end
    end

    def update
        @product = Product.find_by(id: params[:id])
        @product.update(
            name: params[:name] || @product.name, 
            price: params[:price] || @product.price, 
            description: params[:description] || @product.description,
            supplier_id: params[:supplier_id] || @product.supplier_id
            )
        if @product.valid?
            render :show
        else
            render json: {errors: @product.errors.full_messages}, status: 422
        end
    end

    def destroy
        product = Product.find_by(id: params[:id])
        product.destroy
        render json: {messsage: "Product successfully destroyed!"}
    end
end
