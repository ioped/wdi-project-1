class GameRating < ActiveRecord::Base
  attr_accessible :rating, :game

  belongs_to :user
  belongs_to :game
  belongs_to :game_review
end
