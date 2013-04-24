class GameRating < Opinion
  attr_accessible :rating, :game, :game_review, :opinions

  belongs_to :user, through: :opinions
  belongs_to :game
  belongs_to :game_review
end
