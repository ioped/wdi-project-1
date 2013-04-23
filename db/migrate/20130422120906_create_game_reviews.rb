class CreateGameReviews < ActiveRecord::Migration
  def change
    create_table :game_reviews do |t|
      t.references :user
      t.references :game
      t.references :game_rating
      t.string :title
      t.text :body
      t.references :user
      t.references :game
      t.references :game_rating

      t.timestamps
    end
  end
end
