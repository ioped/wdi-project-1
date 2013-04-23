class User < ActiveRecord::Base
  attr_accessible :date_of_birth, :email, :first_name, :last_name, :sex, :profile, :library

  has_one :profile
  has_one :library
  has_many :games, through: :library

  private
  :admin
end
