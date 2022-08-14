# frozen_string_literal: true

# JSON Serialization for product.
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
json.array! @products, :id, :brand, :image_url, :name, :price, :sku
