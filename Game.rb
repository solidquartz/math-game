class Game

  attr_accessor :active_player, :players

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @active_player = player_1.name
  end

  def switch_players(player)
    if @active_player == @player_1.name
      @active_player = @player_2.name
    elsif @active_player == @player_2.name
      @active_player = @player_1.name
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