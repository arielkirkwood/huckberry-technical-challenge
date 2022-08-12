# frozen_string_literal: true

# Holds logic for our products API, mounted at `/api/products.:format`
class Api::ProductsController < ApplicationController
  ##
  # GET /api/products.json
  #
  # ```json
  # [
  #   {
  #     "id": 1,
  #     "brand": "Proof",
  #     "image_url": "http://example.com/image.jpg",
  #     "name": "Shoe",
  #     "price": "100.0",
  #     "sku": "P001"
  #   }
  # ]
  # ```
  #
  def index
    products = Product.all

    respond_to do |format|
      format.json do
        render json: ProductBlueprint.render(products)
      end
    end
  end
end
