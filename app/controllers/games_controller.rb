class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    redirect_to root_url
  end

  def game_params
    params.require(:game).permit(:title, :system, :genre, :start_date, :status)
  end
end
