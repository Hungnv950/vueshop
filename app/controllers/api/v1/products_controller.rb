module Api
  module V1
    class ProductsController < ApplicationController
      def index
        @pagy, @products = pagy Product.all

        json_response @products
      end

      def show
        @product = Product.find(params[:id])

        json_response @product
      end
    end
  end
end
