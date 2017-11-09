class PlayersController < ApplicationController
  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to players_path
    end
  end

  def show
  end

  def new
    @player = Player.new
  end

  def index
  end

  protected

  def player_params
    params.require(:player).permit(:name)
  end

end
