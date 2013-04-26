class JoinGamesGenresTable < ActiveRecord::Migration
  def up
    create_table 'games_genres', id: false do |t|
      t.references :game
      t.references :genre
    end
    add_index :games_genres, [:game_id, :genre_id], uniqueness: true
  end

  def down
    drop_table 'games_genres'
  end
end
