class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :price
      t.integer :store_id
      t.integer :kid_id
    end
  end
end
