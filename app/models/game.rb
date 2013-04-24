class Game < ActiveRecord::Base
  attr_accessible :background, :description, :name, :poster, :game_ratings, :game_reviews, :genres, :libraries, :opinions

  has_and_belongs_to_many :genres
  has_many :opinions
  has_many :game_ratings, through: :opinions
  has_many :game_reviews, through: :opinions
  has_many :libraries
  has_many :users, through: :libraries
end
