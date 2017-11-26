# README

https://acmepizzacompany.herokuapp.com/

## Thought Process

I built the app using two models, User and Order, with no explicit association.

Some assumptions I made from missing information:
* Each order consists of one customer and one pizza. Because of this 1:1 association between pizza and customer, I combined them in one model, called "Order."
* Each pizza can only have one type of topping.
* Pizzas will be picked up on the same day they are ordered.
* For the sake of demonstration, I did not use auth login. If I wanted to include it, I would use bCrypt and set up accounts for each person who worked at the pizzeria.


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
