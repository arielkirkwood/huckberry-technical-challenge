# frozen_string_literal: true

# JSON Serialization for product.
module Products
  class Blueprint < Blueprinter::Base
    identifier :id

    fields :name,
           :sku,
           :brand,
           :price,
           :image_url
  end
end
