puts "Seeding...."

require 'faker'

# Create restaurants
5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address
  )
end

# Create pizzas
10.times do
  Pizza.create(
    name: Faker::Food.dish,
    ingredients: Faker::Food.ingredients
  )
end

# Create restaurant pizzas
15.times do
  RestaurantPizza.create(
    restaurant: Restaurant.all.sample,
    pizza: Pizza.all.sample,
    price: rand(1.0..30.0).round(2)
  )
end


puts "Seeding Done!"
