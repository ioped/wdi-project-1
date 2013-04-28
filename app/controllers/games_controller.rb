class GamesController < ApplicationController

  def index
    @games = Game.all

    render json: @games
  end

  def new
    @game = Game.new
  end

  def list
    @games = Game.all.sort
  end
end
