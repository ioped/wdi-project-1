class JoinGamesLibrariesTable < ActiveRecord::Migration
  def up
    create_table 'games_libraries', id: false do |t|
      t.references :game
      t.references :library
    end
  end

  def down
    drop_table 'games_libraries'
  end
end
