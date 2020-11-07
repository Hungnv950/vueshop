module Api
  module V1
    class ProductsController < ApplicationController
      def index
        @pagy, @products = pagy Product.all

        json_response @products
      end
    end
  end
end
