class Genre < ActiveRecord::Base
  attr_accessible :name, :games

  has_and_belongs_to_many :games
end


