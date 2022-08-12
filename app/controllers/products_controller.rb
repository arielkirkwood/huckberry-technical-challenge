# frozen_string_literal: true

# Holds logic for our products API, mounted at `/api/products.:format`
class ProductsController < ApplicationController
  before_action :set_products

  ##
  # GET /products.json
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
    respond_to do |format|
      format.json do
        render json: rendered_products
      end
    end
  end

  private

  def set_products
    @products = Product.all
  end

  def rendered_products
    ProductBlueprint.render(@products)
  end
end
