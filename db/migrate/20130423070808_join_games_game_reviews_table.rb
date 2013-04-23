class JoinGamesGameReviewsTable < ActiveRecord::Migration
  def up
    create_table 'games_game_reviews', id: false do |t|
      t.references :game
      t.references :game_review
    end
  end

  def down
    drop_table 'games_game_reviews'
  end
end
