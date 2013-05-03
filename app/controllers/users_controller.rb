class UsersController < ApplicationController
  before_filter :authorize

  def index
    @users = User.all

    render json: @users
  end

  def show
    @user = User.find(params[:id])

    render json: @user
  end

  def create
    @user = User.new(params[:email, :password, :password_confirmation])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:email, :password, :first_name, :last_name, :sex])
  end

  def destroy
    @user = User.find(params[:id])
  end

  # Check games owned by user
  def check_games
    mysteam64id = "76561198054201790"

    usergames = JSON.parse(open("http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key=47759AFAA400BE100A45F20F9A918C3E&steamid=" + @user.steamid + "&format=json&include_appinfo=1&include_played_free_games=1").read)
    
    temp_user_game_v = usergames["response"]["games"]

    num_steam_games = temp_user_game_v["game_count"]

    temp_user_game_v.each do |g|
      tempappid = g['appid']
      tempgname = g['name']

      if !Game.exists?(:steam_game_id => tempappid)
        newgame = Game.create(name: tempgname, steam_game_id: tempappid)
      end

      @user.games << newgame

    end
  end

  # Set steam64id by checking vanityurl
  def check_steam_64_id
    JSON.parse(open("http://api.steampowered.com/ISteamUser/ResolveVanityURL/v0001/?key=47759AFAA400BE100A45F20F9A918C3E&vanityurl=" + @user.steamid + ).read)
  end

end
