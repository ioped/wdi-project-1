require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :date_of_birth, :email, :first_name, :last_name, :sex, :profile, :games, :password, :password_confirmation

  attr_accessor :password

  has_one                 :profile
  has_and_belongs_to_many :games

  validates :email                  , presence:     true  , uniqueness: {case_sensitive: false}
  validates :password               , confirmation: true
  validates :password_confirmation  , presence:     true


  before_save :set_password

  def self.authenticate(email, password)
    user.find_by_email(email)

  end

  private

  def set_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, self.password_salt)
    end
  end





  # around_save :salt_generate

  # yield


  # private
  #   def salt_generate
  #     :salt = SecureRandom.uuid
  #   end

end
