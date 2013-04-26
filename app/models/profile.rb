class Profile < ActiveRecord::Base
  attr_accessible :avatar, :description, :display_name, :user

  belongs_to :user
end
