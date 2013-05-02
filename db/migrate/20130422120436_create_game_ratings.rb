class CreateGameRatings < ActiveRecord::Migration
  def change
    create_table :game_ratings do |t|
      t.references :user
      t.references :game
      t.references :game_review
      t.integer    :rating

      t.timestamps
    end
    add_index :game_id, :game_rating_id, uniqueness: true
  end
end
