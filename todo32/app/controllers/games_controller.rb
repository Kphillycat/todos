class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(params[:game])
    if @game.save
      redirect_to @game
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.delete
    redirect_to "/games"
  end
end
