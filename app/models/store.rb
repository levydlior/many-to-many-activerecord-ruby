class Store < ActiveRecord::Base
  has_many :games, dependent: :destroy
  has_many :kids, through: :games

  def self.most_profit
    all.order(profit_per_year: :desc).first
  end

  def self.most_popular
    self.all.max_by { |store| store.kids.length }
  end

  def youngest_customer
    kid = self.kids.(:age).first
    puts "#{kid.name} is the youngerst customer we ever had"
  end
end
