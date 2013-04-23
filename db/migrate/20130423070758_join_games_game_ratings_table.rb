class JoinGamesGameRatingsTable < ActiveRecord::Migration
  def up
    create_table 'games_game_ratings', id: false do |t|
      t.references :game
      t.references :game_rating
    end
  end

  def down
    drop_table 'games_game_ratings'
  end
end
