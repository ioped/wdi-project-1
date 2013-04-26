class SiteController < ApplicationController
  before_filter :authorize, except: [:index, :login]

  def index
    if current_user
      @games = @current_user.games
      @rating = GameRating.new
    else
      render '/signup'
    end
  end

  def login
    if User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id

      redirect_to root_url
    else
      flash.now.alert = "Invalid email or password"

      render 'index'
    end
  end

  def logout
    session[:user_id] = nil

  end
end