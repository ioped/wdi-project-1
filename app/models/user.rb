require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :date_of_birth, :email, :first_name, :last_name, :sex, :profile, :games, :steamid, :steam64id, :password, :password_confirmation

  attr_accessor :password

  has_one                 :profile
  has_one                 :usersteamid
  has_one                 :usersteam64id
  has_and_belongs_to_many :games
  has_many                :game_reviews, through: :games
  has_many                :game_ratings, through: :games

  validates :email                  , presence:     true  , uniqueness: {case_sensitive: false}
  validates :password               , confirmation: true
  validates :password_confirmation  , presence:     true

  before_save :set_password

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def update_usersteamid
    steam
  end

  private

  def set_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, self.password_salt)
    end
  end
end
