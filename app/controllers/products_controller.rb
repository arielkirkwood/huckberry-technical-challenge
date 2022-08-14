# frozen_string_literal: true

# Holds logic for our products resource, mounted at `/products.:format`
class ProductsController < ApplicationController
  # rubocop:disable Rails/LexicallyScopedActionFilter
  before_action :set_products, only: :index
  # rubocop:enable Rails/LexicallyScopedActionFilter

  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Product.find_by(:sku, params[:sku]).destroy!

    head :no_content
  end

  private

  def set_products
    @products = Product.order(created_at: :desc).all
  end
end
