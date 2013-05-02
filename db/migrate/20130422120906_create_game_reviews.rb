class CreateGameReviews < ActiveRecord::Migration
  def change
    create_table :game_reviews do |t|
      t.string :title
      t.text :body
      t.references :user
      t.references :game
      t.references :game_rating

      t.timestamps
    end
      # add_index :game_reviews, :game_id, uniqueness: true
      # add_index :game_ratings, :game_id, uniqueness: true
  end
end
