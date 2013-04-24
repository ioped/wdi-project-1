class Library < ActiveRecord::Base
  attr_accessible :user, :games

  belongs_to :user
  has_many :games
end