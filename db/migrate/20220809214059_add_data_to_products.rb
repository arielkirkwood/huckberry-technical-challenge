class AddDataToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :category, :string
    add_column :products, :color, :string
    add_column :products, :launched_at, :timestamp
  end
end
