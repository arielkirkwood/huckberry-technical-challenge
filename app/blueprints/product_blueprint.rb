# frozen_string_literal: true

# JSON Serialization for product.
class ProductBlueprint < Blueprinter::Base
  identifier :id

  fields :name,
         :sku,
         :brand,
         :price,
         :image_url
end
