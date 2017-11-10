class GamesController < ApplicationController

  def new
    @game = Game.new
    @game.players.build
  end

  def create
    @game = Game.new(game_params)
    # @player = params["game"]["players_attributes"]["0"]
    @player = Player.new
    if @game.save
      redirect_to games_path
      # TODO: change this to running the game
    end
  end

  def index
  end

  def show
  end

  protected

  def game_params
    # TODO: fix the problem with players_attributes
    params.require(:game).permit(:winner, :loser, players_attributes: [:name])
  end

end
