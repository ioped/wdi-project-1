class SiteController < ApplicationController
  before_filter :authorize, except: [:index, :login, :signup]

  def index

    @games = Game.all.sort

  end

  ###############################
  #####   LOGIN AND LOGOUT  #####
  ###############################

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

  def user_login
    render partial: 'login_form'
  end

  ###############################
  ####  WELCOME AND SIGNUP   ####
  ###############################

  def hello_stranger
    @user = User.new
  end

  def signup
    @user = User.new

    render :partial => 'signup_form', layout: false
  end

  def welcome_screen
    render :partial => 'welcome_screen', layout: false
  end

  ###############################
  #####    GAME METHODS     #####
  ###############################

  def game_list
    @games = Game.all.sort

    render :partial => 'game_list', layout: false
  end

  def game_detail
    @game = Game.find(params[:id])
    
    render :partial => 'game_detail', layout: false    
  end



  # def check_for_and_add_user_steam_games

  #   results.each do |game|
  #     game_id = game['appid']
      
  #     if Game.
  #     if game['appid'] !=
  #       Game.create name: game['name'], steam_game_id: game['appid']
  #     end
  #   end
  # end


  # # Check games owned by user
  # def check_games
  #   mysteam64id = "76561198054201790"

  #   usergames = JSON.parse(open("http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key=47759AFAA400BE100A45F20F9A918C3E&steamid=" + @user.steam64id + "&format=json&include_appinfo=1&include_played_free_games=1").read)
    
  #   temp_user_game_v = usergames["response"]["games"]

  #   num_steam_games = temp_user_game_v["game_count"]

  #   temp_user_game_v.each do |g|
  #     temp_app_id = g['appid']
  #     temp_game_name = g['name']

  #     if !Game.exists?(:steam_game_id => temp_app_id)
  #       newgame = Game.create(name: temp_game_name, steam_game_id: temp_app_id)
  #     end

  #     @user.games << newgame

  #   end
  # end


  # def check_steam_info
  #   player_summary = JSON.parse(open("http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=47759AFAA400BE100A45F20F9A918C3E&steamids=" + @user.steam64id ).read)
  # end

  # # Set steam64id by checking vanityurl
  # def check_steam_64_id
  #   @user.steam64id = JSON.parse(open("http://api.steampowered.com/ISteamUser/ResolveVanityURL/v0001/?key=47759AFAA400BE100A45F20F9A918C3E&vanityurl=" + @user.steamid ).read)
  # end




  ###############################
  #####   ACCOUNT METHODS   #####
  ###############################

  def account_page
    @user = User.find(params[:id])

    render :partial => 'account_page', layout: false
  end

  def profile_page
    @profile = User.find(params[:id]).profile

    render :partial => 'profile_page', layout: false
  end


end



