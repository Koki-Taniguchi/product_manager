module Api
  module V1
    class ProductsController < ApplicationController
      protect_from_forgery
      def index
        @products = Product.all
        render json: @products
      end

      def create
        @product = Product.new(product_params)
        if @product.save
          render json: @product
        else
          render json: @product.errors, status: :unprocessable_entity
        end
      end

      def update
        @product = Product.find(params[:id])
        if @product.update(blank_reject_params)
          render json: @product
        else
          render json: @product.errors, status: :unprocessable_entity
        end
      end

      def destroy
        product = Product.find(params[:id])
        product.destroy
        @products = Product.all
      end

      def search
        params[:search] ? @products = Product.search(params[:search]) : @products = Product.all
        render json: @products
      end

      private

      def product_params
        params.require(:product).permit(:title, :text, :image, :price, :shop_id)
      end

      def blank_reject_params
        product_params.reject{ |key, value| value.blank? }
      end
    end
  end
end
