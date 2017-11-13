class GamesController < ApplicationController

  def index
    @games = Game.order(created_at: :desc)
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
    player = @game.players.build
    player.weapons.build
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      @game.update(winner_id: @game.run_game)
      redirect_to game_path(@game)
    else
      render action: :new
    end
  end

  protected

  def game_params
    params.require(:game).permit(:winner, :loser, players_attributes: [:name, weapons_attributes: [:id, :name], weapons: [:name] ] )
  end

end
