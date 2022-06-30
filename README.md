# Toy store - many to many practice


## Introduction

For this practice, We're going to have 3 models: 

1-  store (a store has many toys and many kids through toys **hint hint)
2-  kid (a kid has many toys and many stored through toys **hint hint)
3- toy (a toy belongs to a store and to a kid)

**Note**: I recommend drawing the relationships to make it easier to see what goes where (which table should hold the id of the other table)


## Instructions

-Run `bundle install`.

-Build the migrations (table information is provided below).

-Build the models.

-Seed with some starter data so you could start working

**Note**: Since there are no tests, you should use pry to see if your methods work (you can use `rake console` to enter a pry session).

-----
## Tables layout:

### stores Table

| Column          | Type    |
| -------------   | ------- |
| name            | String  |
| profit_per_year | Integer |

### kids Table

| Column | Type   |
| ------ | ------ |
| name   | String |
| age    | Integer|

### toys Table
Will need to have a name and a price

**Note**: It is up to you to figure out who will hold the ids

-----------------------
## Methods:

Write the following methods:

'#'  will refer to an instance method

'.' will refer to a class method

#### toy

- `toy#kid`
  - returns the `kid` instance for this toy
- `toy#store`
  - returns the `store` instance for this toy

#### Store

- `store#toys`
  - returns a collection all the toys associated with this `store`
- `store#kids`
  - returns all the kids who got toys from this `store`

#### Kid

- `kid#toys`
  - returns all the toys the kid has
- `kid#stores`
  - returns all the stores the kid bought a toy from
