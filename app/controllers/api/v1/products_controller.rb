module Api
  module V1
    class ProductsController < ApplicationController
      def index
        @products = Product.all.limit(20)

        json_response @products
      end
    end
  end
end
