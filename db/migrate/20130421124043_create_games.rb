class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :poster
      t.string :background
      t.text :description
      t.string :steam_game_id
      t.references :game_ratings
      t.references :game_reviews

      t.timestamps
    end
      add_index :games, :game_reviews_id, uniqueness: true
      add_index :games, :game_ratings_id, uniqueness: true
  end
end
