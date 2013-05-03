class SiteController < ApplicationController
  before_filter :authorize, except: [:index, :login, :signup]

  def index

    @games = Game.all.sort

  end

  def login
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id

      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"

      render 'index'
    end
  end

  def logout
    session[:user_id] = nil

    redirect_to root_url, :notice => "Logged out!"
  end

  def welcome_screen
    render :partial => 'welcome_screen', layout: false
  end

  def game_list
    @games = Game.all.sort

    render :partial => 'game_list', layout: false
  end

  def game_detail
    @game = Game.find(params[:id])
    
    render :partial => 'game_detail', layout: false    
  end

  def account_page
    @user = User.find(params[:id])

    render :partial => 'account_page', layout: false
  end

  def profile_page
    @profile = User.find(params[:id]).profile

    render :partial => 'profile_page', layout: false
  end

  def hello_stranger

    @user = User.new

  end

  def signup
    @user = User.new

    render :partial => 'signup', layout: false
  end
end



