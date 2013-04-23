class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :poster
      t.string :background
      t.text :description
      t.references :game_ratings
      t.references :game_reviews

      t.timestamps
    end
  end
end
