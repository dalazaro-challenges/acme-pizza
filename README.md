# README

**https://acmepizzacompany.herokuapp.com/**

## Thought Process

Some assumptions I made about the functionality of the app from missing information:
* Each order will consist of one customer and one pizza. (Because of this 1:1 association between pizza and customer, I combined them in one model called "Order.")
* Each pizza can only have one type of topping.
* Pizzas will be picked up on the same day they are ordered.

I built the app using two models, `User` and `Order`, with no explicit association between the two.

The `User` schema includes one property:
* name: String (set to "Cashier", "Baker", "Manager")

The `Order` schema includes the following properties:
* name: String (customer name)
* phone: String
* pickup: String (time of pickup)
* size: String (options: "Small", Medium", "Large")
* toppings: String (options: "Cheese", "Pepperoni", "Hawaiian", "Veggie")
* ready: Boolean (indicates if order is ready for pickup)

The app also has three separate views, once for each employee type in the company. The `Cashier` can input new orders into the database. The `Baker` can view an index of orders arranged by pickup time (earliest first), and can edit the ready status of the order. The `Manager` can view an index of orders arranged by the date and time the order was placed, and can delete orders as needed.

Due to the difficulty of properly downgrading Ruby and Rails locally (i.e. not just in the Gemfile), I initially built the app in a separate GitHub repo using Rails 5.1 and Ruby 2.4.2. I then migrated my MVC into this repo once I had learned how to properly configure Ruby 2.3.4 and Rails 4.2.8 onto my local machine using rvm. I used these versions of Ruby and Rails at the recommendation of GitHub, who warned me about security issues in earlier versions.

## Future Development
* Use bCrypt for auth login, and set up accounts for each person who worked at the pizzeria.
* Fix the baker/manager pickup time view to 12-hour clock.
* Create join tables in the database for multiple pizzas per order, and a table to keep track of which cashier placed an order, and which baker made the pizza.
* Input logic: if the time between order creation and pickup time is less than 30 minutes, the order cannot be placed.

## Versions
* **Ruby:** 2.3.4
* **Rails:** 4.2.8

## Dependencies
*Please refer to Gemfile for list of dependencies.*
* **NOTE:** rails_12factor (Rubygem for Heroku deploy)

## Configuration
* `git clone https://github.com/dalazaro-challenges/acme-pizza.git`
* `rails console`
* `localhost:3000` in browser

## Database creation
* rake db:create
* rake db:migrate
* rake db:seed

## Database initialization
* Properly seeded database will consist of 3 users (Cashier, Baker, and Manager) and an empty table for order entry.
