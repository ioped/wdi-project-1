class CreateGameRatings < ActiveRecord::Migration
  def change
    create_table :game_ratings do |t|
      t.references :user
      t.references :game
      t.references :game_review
      t.integer :rating
      t.references :user
      t.references :game
      t.references :game_review

      t.timestamps
    end
  end
end
