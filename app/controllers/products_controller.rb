# frozen_string_literal: true

# Holds logic for our products API, mounted at `/products.:format`
class ProductsController < ApplicationController
  before_action :set_products

  private

  def set_products
    @products = Product.all
  end
end
