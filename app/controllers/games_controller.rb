class GamesController < ApplicationController

  def index
    @games = Game.order(created_at: :desc)
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
    @game.players.build
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_(@game)
    else
      render action: :new
    end
  end

  def index
  end

  def show
  end

  protected

  def game_params
    params.require(:game).permit(:winner, :loser, players_attributes: [:name, weapons_attributes: [:id]])
  end

end
