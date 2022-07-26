class Game

  attr_accessor :active_player, :players

  def initialize(player_1, player_2)
    @players = [player_1.name, player_2.name]
    @active_player = @players[0]
    @player_1 = player_1
    @player_2 = player_2
  end

  def switch_players(player)
    if @active_player == @players[0]
      @active_player = @players[1]
    elsif @active_player == @players[1]
      @active_player = @players[0]
    end
  end

  def lose_life(player)
    if player == @player_1.name
      @player_1.lives -= 1
    elsif player == @player_2.name
      @player_2.lives -= 1
    end
  end
end