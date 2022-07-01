# Game store - many to many practice

## Introduction

For this practice, We're going to have 3 models:

1- store (a store has many games and many kids through games \*\*hint hint)

2- kid (a kid has many games and many stores through games \*\*hint hint)

3- game (a game belongs to a store and to a kid)

**Note**: I recommend drawing the relationships to make it easier to see what goes where (which table should hold the id of the other table)

## Instructions
-Run `bundle install`.

## Which branch to work from?

### main
- Main branch has the basic setup but nothing else
- You'll have to build the migrations and migrate
- You'll have to create modles and seed
- You'll have to create the associations and methods

## migrations
- Same as above but also has the migrations all built up
- You'll need to migrate, create modles, seeds and seed
- Build the associations and methodds

## all_set_up
- Same as above but also has the modles built as well as seeds ready to go
- You'll need to create associations and methods

## solution 
- has the solution for everything

**Note**: Since there are no tests, you should use pry to see if your methods work (you can use `rake console` to enter a pry session).

---

## Tables layout:

### stores Table

| Column          | Type    |
| --------------- | ------- |
| name            | String  |
| profit_per_year | Integer |

### kids Table

| Column | Type    |
| ------ | ------- |
| name   | String  |
| age    | Integer |

### games Table

game
Will need to have a `title` and a `price`

**Note**: It is up to you to figure out who will hold the ids

---

## Methods:

Write the following methods:

'#' will refer to an instance method

'.' will refer to a class method

#### game

- `game#kid`
  - returns the `kid` instance for this game
- `game#store`
  - returns the `store` instance for this game
- `game#good_friend(kid)`
  - gives the current game to a new kid and puts `You gave {game title} to {kid name}. What a good friend you are!`. 
  - If the game is owned by the kid put: `That's kind of stingy`.
  - if the kid doesn't exist puts `You don't have this friend 😞`

#### Store

- `store#games`
  - returns a collection all the games associated with this `store`
- `store#kids`
  - returns all the kids who got games from this `store`
- `Store.most_profit`
  - returns the instance of the store with the most profit
- `Store.most_popular`
  - return the instance of a store that is most popular (most games were bought from it)
- `store#youngest_customer`
  - puts `{kid name} is the youngest customer we ever had`
  - If there are more than one return the first kid

#### Kid

- `kid#games`
  - returns all the games the kid has
- `kid#stores`
  - returns all the stores the kid bought a game from
- `kid#buy_a_game(game_title, store)`
  - given a store name (see if it exists if not create it)-- look at the schema to see the columns (you can use rand method for profit) 
  - Make a new game instance with current kid
- `kid#sid_broke_my_toy`
  - Find the most expensive game and destroy it. put "Sid, you're a bad person for destroying my {game title}!"
- `Kid.spoiled_kid`
  - returns the instance of kid who has the most games
