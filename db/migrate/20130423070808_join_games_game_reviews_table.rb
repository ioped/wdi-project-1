class JoinGamesGameReviewsTable < ActiveRecord::Migration
  def up
    create_table 'games_game_reviews', id: false do |t|
      t.references :game
      t.references :game_review
    end
    add_index :games_game_reviews, [:game_id, :game_review_id], uniqueness: true
  end

  def down
    drop_table 'games_game_reviews'
  end
end
