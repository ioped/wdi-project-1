class GameReview < ActiveRecord::Base
  attr_accessible :title, :body, :user, :game, :game_rating

  belongs_to :user
  belongs_to :game
  has_one :game_rating
end
