# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

[
  {
    name: 'Shoe',
    sku: 'P001',
    brand: 'Proof',
    price: 100.00,
    image_url: 'https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=640',
    category: 'Clothes',
    color: 'Black',
    launched_at: Time.zone.parse('2022-01-01T00:00:00Z')
  },
  {
    name: 'Sunglasses',
    sku: 'P002',
    brand: 'Proof',
    price: 40.00,
    image_url: 'https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=640',
    category: 'Clothes',
    color: 'Black',
    launched_at: Time.zone.parse('2022-08-01T00:00:00Z')
  },
  {
    name: 'Car',
    sku: 'P003',
    brand: 'Huckberry',
    price: 10000.00,
    image_url: 'https://images.unsplash.com/photo-1581235720704-06d3acfcb36f?ixlib=rb-1.2.1&auto=format&fit=crop&w=640&q=80',
    category: 'Gear',
    color: 'White',
    launched_at: Time.zone.parse('2022-03-01T00:00:00Z')
  },
  {
    name: 'Game Boy Color',
    sku: 'P004',
    brand: 'Huckberry',
    price: 90.00,
    image_url: 'https://images.unsplash.com/photo-1531525645387-7f14be1bdbbd?ixlib=rb-1.2.1&auto=format&fit=crop&w=640&q=80',
    category: 'Gear',
    color: 'Yellow',
    launched_at: Time.zone.parse('2022-01-01T00:00:00Z')
  },
  {
    name: 'Camera Lens',
    sku: 'P005',
    brand: 'Wellen',
    price: 400.00,
    image_url: 'https://images.unsplash.com/photo-1609900179119-3ed9f4530eb8?ixlib=rb-1.2.1&auto=format&fit=crop&w=640&q=80',
    category: 'Gear',
    color: 'Silver',
    launched_at: Time.zone.parse('2022-03-01T00:00:00Z')
  },
  {
    name: 'Coffee Beans',
    sku: 'P006',
    brand: 'Wellen',
    price: 30.00,
    image_url: 'https://images.unsplash.com/photo-1581191853005-15f8b24f6302?ixlib=rb-1.2.1&auto=format&fit=crop&w=640&q=80',
    category: 'Food',
    color: 'Brown',
    launched_at: Time.zone.parse('2022-04-01T00:00:00Z')
  },
  {
    name: 'Egg',
    sku: 'P007',
    brand: 'Proof',
    price: 10.00,
    image_url: 'https://images.unsplash.com/photo-1580447395007-b88203c669fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=640&h=640&q=80',
    category: 'Food',
    color: 'Brown',
    launched_at: Time.zone.parse('2022-03-14T00:00:00Z')
  },
  {
    name: 'Shirt',
    sku: 'P008',
    brand: 'Wellen',
    price: 70.00,
    image_url: 'https://images.unsplash.com/photo-1611202645713-c2ecb5aeb365?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=640&h=640&q=80',
    category: 'Clothes',
    color: 'Yellow',
    launched_at: Time.zone.parse('2022-05-04T00:00:00Z')
  }
].each do |product_data|
  Product.where(
    sku: product_data[:sku]
  ).first_or_create(
    product_data
  )
end
