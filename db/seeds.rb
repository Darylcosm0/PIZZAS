# db/seeds.rb
restaurant1 = Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
restaurant2 = Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")

pizza1 = Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
pizza2 = Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")

restaurant1.restaurant_pizzas.create(pizza: pizza1, price: 10)
restaurant1.restaurant_pizzas.create(pizza: pizza2, price: 12)
restaurant2.restaurant_pizzas.create(pizza: pizza1, price: 8)
