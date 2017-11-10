class PlayersController < ApplicationController

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    # if @player.save
    #   redirect_to players_path
    # end
  end

  def show
  end


  def index
  end

  protected

  def player_params
    params.require(:player).permit(:name)
  end

end
