class Game(player_1, player_2)

  attr_accessor :active_player, :players

  def initialize
    @players = [player_1, player_2]
    @active_player = @players[0]
    @player_1 = player_1
    @player_2 = player_2
  end


end