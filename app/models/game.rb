class Game < ActiveRecord::Base
  attr_accessible :background, :description, :name, :poster, :game_ratings, :game_reviews, :genres, :steam_id

  has_and_belongs_to_many :genres
  has_and_belongs_to_many :users
  has_many                :game_ratings
  has_many                :game_reviews
end
