class GamesController < ApplicationController
  before_filter :authorize

  def index
    @games = Game.all.sort

    render json: @games
  end

  def new
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])

    render json: @game
  end
end
