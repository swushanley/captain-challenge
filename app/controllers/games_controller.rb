class GamesController < ApplicationController

  def index
    @games = Game.order(created_at: :desc)
  end

  def show
    @game = Game.find(params[:id])
    @statistics = Statistic.all.order(created_at: :desc)
  end

  def new
    @game = Game.new
    player = @game.players.build
    player.weapons.build
  end

  def create
    @game = Game.new(game_params)
    @statistic = Statistic.new
    @game.players.first.update(health: 100, strength: 100)
    @game.players.last.update(health: 100, strength: 100)
    if @game.save
      @statistic.update(game_id: @game.id)
      @statistic.update(game_name: "#{@game.players.first.name} v. #{@game.players.last.name}")
      @statistic.update(player_1_id: @game.players.first.id)
      @statistic.update(player_2_id: @game.players.last.id)
      @game.update(winner_id: @game.run_game[0])
        if @game.winner_id == @game.players.first.id
          @statistic.update(player_1_damage: @game.run_game[1])
          @statistic.update(player_1_damage: @game.run_game[2])
        else
          @statistic.update(player_2_damage: @game.run_game[1])
          @statistic.update(player_1_damage: @game.run_game[2])
        end
      redirect_to game_path(@game)
    else
      render action: :new
    end
  end

  protected

  def game_params
    params.require(:game).permit(:winner_id, players_attributes: [:name, weapons_attributes: [:id, :name], weapons: [:name] ] )
  end

end
