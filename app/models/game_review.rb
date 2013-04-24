class GameReview < ActiveRecord::Base
  attr_accessible :body, :title, :game_rating

  belongs_to :user
  belongs_to :game
  has_one :game_rating
end
