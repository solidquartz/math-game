require './Game'
require './Player'
require './Question'


:player_1 = Player.new "Player 1"
:player_2 = Player.new "Player 2"

new_game = Game.new(:player_1, :player_2)

puts "Welcome to TwO-O Player Math Game!"
puts "The most exciting Ruby game in the coding mines!"
puts "Are you ready? #{player_1.name} is up first."

:new_question = Question.new


