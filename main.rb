require './Game'
require './Player'
require './Question'


player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")

game = Game.new(player_1, player_2)

puts "Welcome to TwO-O Player Math Game!"
puts "The most exciting Ruby game in the coding mines!"
puts "Are you ready? #{player_1.name} is up first."

#gameplay loop
while player_1.lives > 0 && player_2.lives > 0  

  question = Question.new(game.active_player)
  question.create_question(game.active_player)
  player_input = gets.chomp.to_i

  if player_input == question.answer
    puts "#{game.active_player}: 🥳 That's right!"
  else 
    puts "#{game.active_player}: 😧 Regrettably, no." 

    game.lose_life(game.active_player)
  end

#if player dies
  if player_1.lives == 0 
    puts"#{player_2}, you win with #{player_2.lives} remaining! 🎉"
    puts "---------- GAME OVER ----------"
    puts "See you next time for another thrilling round of TwO-O Math Game!"
  end

  if player_2.lives == 0 
    puts"#{player_1}, you win with #{player_1.lives} remaining! 🎉"
    puts "---------- GAME OVER ----------"
    puts "See you next time for another thrilling round of TwO-O Math Game!"
  end

#if both players alive
  if player_1.lives > 0 && player_2.lives > 0
    puts "🔥 #{player_1.name}: #{player_1.lives}/3 vs #{player_2.name}: #{player_2.lives}/3 🔥"

    game.switch_players

    puts "---------- NEW TURN ---------- "
  end

end


