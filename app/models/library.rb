class Library < ActiveRecord::Base
  attr_accessible :title, :body, :user, :games

  belongs_to :user
  has_many :game
end