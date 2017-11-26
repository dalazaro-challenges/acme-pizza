# README

https://acmepizzacompany.herokuapp.com/

A short readme explaining my thought process, and any assumptions I made in how it will work.

## Versions
* **Ruby:** 2.3.4
* **Rails:** 4.2.8

## Dependencies
*Please refer to Gemfile for list of dependencies*
* **NOTE:** rails_12factor (Rubygem for Heroku deploy)

## Configuration
* `git clone https://github.com/dalazaro-challenges/acme-pizza.git`
* `rails console`
* Visit `localhost:3000` in browser

## Database creation
* rake db:create
* rake db:migrate
* rake db:seed

## Database initialization
* Properly seeded database will consist of 3 users (Cashier, Baker, and Manager) and an empty table for orders.
