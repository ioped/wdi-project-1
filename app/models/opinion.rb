class Opinion < ActiveRecord::Base
  attr_accessible :profile, :game

  belongs_to :profile
  belongs_to :game
end
