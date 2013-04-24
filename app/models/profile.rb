class Profile < ActiveRecord::Base
  attr_accessible :avatar, :description, :display_name, :user, :opinions

  has_many :opinions
  belongs_to :user
end
