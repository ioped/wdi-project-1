class CreateGameRatings < ActiveRecord::Migration
  def change
    create_table :game_ratings do |t|
      t.references :user
      t.references :game
      t.references :game_review
      t.integer    :rating

      t.timestamps
    end
    # add_index :game_ratings, :game, uniqueness: true
  end
end
