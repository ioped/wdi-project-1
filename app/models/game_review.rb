class GameReview < ActiveRecord::Base
  attr_accessible :body, :title

  belongs_to :user
  belongs_to :game
  has_one :game_rating
end
