class GameRating < ActiveRecord::Base
  attr_accessible :rating, :user, :game, :game_review

  belongs_to :user
  belongs_to :game
  belongs_to :game_review
end
