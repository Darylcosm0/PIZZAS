Rails.application.routes.draw do
  # Restaurants routes
  get "/restaurants", to: "restaurants#index"
  get "/restaurants/:id", to: "restaurants#show"
  delete "/restaurants/:id", to: "restaurants#destroy"

  # Pizzas routes
  get "/pizzas", to: "pizzas#index"

  # RestaurantPizzas routes
  post "/restaurant_pizzas", to: "restaurant_pizzas#create"
end
