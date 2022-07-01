class Kid < ActiveRecord::Base
  has_many :games, dependent: :destroy
  has_many :stores, through: :games

  def buy_a_game(game_title, price, store_name)
    store = Store.find_by(name: store_name)
    if !store
        Store.create(name: store_name, profit_per_year: rand(0...100000))
    end    
    Game.create(title: game_title, price: price, kid_id: self.id, store_id: store.id)
  end
end
