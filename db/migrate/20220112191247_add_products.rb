# frozen_string_literal: true

# Adds basic product table
class AddProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.string :brand
      t.decimal :price, precision: 8, scale: 2
      t.string :image_url

      t.timestamps
    end
  end
end
