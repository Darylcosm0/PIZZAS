# TITLE
    ## Pizza  API

This is a sample Rails application that implements a simple pizza ordering system, with three main models: Restaurant, Pizza, and RestaurantPizza. 

The application allows users to create restaurants and pizzas, and then create restaurant pizzas that link a particular pizza to a particular restaurant, along with a price.

The following instructions assume that you have Ruby and Rails installed on your machine. If you do not, please follow the instructions in the Ruby and Rails documentation to install them.

## Getting Started

Clone this repository to your local machine using the command:

    git clone git@github.com:Darylcosm0/PIZZAS.git

Navigate into the project directory using the command:


    cd pizza-restaraunt

Install the required dependencies by running:


    bundle install

Set up the database by running:

    rails db:create db:migrate db:seed

Start the server by running:


    rails s

Open your web browser and navigate to http://localhost:3000/ to view the home page.

## Usage

The application has the following main features:
Restaurants

The application allows users to create restaurants, and to view a list of all restaurants or a single restaurant by ID. Users can also delete a restaurant by ID.
Endpoints

- GET /restaurants - Returns a list of all restaurants as JSON data.
- GET /restaurants/:id - Returns a single restaurant and its associated pizzas by ID as JSON data. Returns an error message and appropriate HTTP status code if the restaurant does not exist.
- DELETE /restaurants/:id - Deletes a restaurant and its associated restaurant pizzas by ID. Returns an empty response body and appropriate HTTP status code. Returns an error message and appropriate HTTP status code if the restaurant does not exist.

## Endpoints
1. GET /restaurants

- Return JSON data in the format below:



        [
        {
            "id": 1,
            "name": "Sottocasa NYC",
            "address": "298 Atlantic Ave, Brooklyn, NY 11201"
        },
        {
            "id": 2,
            "name": "PizzArte",
            "address": "69 W 55th St, New York, NY 10019"
        }
        ]

2.  GET /restaurants/:id

If the Restaurant exists, return JSON data in the format below:



    {
    "id": 1,
    "name": "Sottocasa NYC",
    "address": "298 Atlantic Ave, Brooklyn, NY 11201",
    "pizzas": [
        {
        "id": 1,
        "name": "Cheese",
        "ingredients": "Dough, Tomato Sauce, Cheese"
        },
        {
        "id": 2,
        "name": "Pepperoni",
        "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
        }
    ]
    }

If the Restaurant does not exist, return the following JSON data, along with
the appropriate HTTP status code:



    {
    "error": "Restaurant not found"
    }

3. DELETE /restaurants/:id

- If the Restaurant exists, it should be removed from the database, along with
any RestaurantPizzas that are associated with it.

- After deleting the Restaurant, return an empty response body, along with the
appropriate HTTP status code.

- If the Restaurant does not exist, return the following JSON data, along with
the appropriate HTTP status code:



        {
        "error": "Restaurant not found"
        }

4. GET /pizzas

Return JSON data in the format below:


    [
    {
        "id": 1,
        "name": "Cheese",
        "ingredients": "Dough, Tomato Sauce, Cheese"
    },
    {
        "id": 2,
        "name": "Pepperoni",
        "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
    }
    ]

5. POST /restaurant_pizzas

- This route should create a new RestaurantPizza that is associated with an
existing Pizza and Restaurant. It should accept an object with the following
properties in the body of the request:


        {
        "price": 5,
        "pizza_id": 1,
        "restaurant_id": 3
        }

- If the RestaurantPizza is created successfully, send back a response with the data
related to the Pizza:


        {
        "id": 1,
        "name": "Cheese",
        "ingredients": "Dough, Tomato Sauce, Cheese"
        }

- If the RestaurantPizza is not created successfully, return the following
JSON data, along with the appropriate HTTP status code:



        {
        "errors": ["validation errors"]
        }


## Conclusion 

 - The Pizza Restaurant API is a sample Rails application that implements a simple pizza ordering system. 
 - It allows users to create restaurants, pizzas, and restaurant pizzas that link a particular pizza to a particular restaurant with a price. 
 - The project is licensed under the MIT license, which means that it can be freely cloned and modified by anyone. If you have any questions or feedback about the project, feel free to reach out.
<br>
<br>
 Author:
 - DARYL MUTAI

# License
- MIT . 