A game is played by two players
-Each player takes turns answering 20 math questions
-If a player gets an answer wrong, they lose a life
-A player has 3 lives. Once they lose all 3, the game ends, and the other player is the winner.
-Answers are input with gets.chomp

classes: 
    -games
    -questions
    -player

    roles:
      -players
        state: number of lives (3/3), name
        behaviour: update lives (attr_accessor)
      -games
        state: turn number (/20), total score (P1: 3/3, P2: 3/3), players
        behaviour: move to next turn, start/end a game, calculate score
      -turns
        state: question
        behaviour: lose a life, check answer
      -questions
        state: question, answer
        behaviour: check answer

  info relevant to each class:
    -game: winner, current turn, start/end, lives
    -player: name, lives (3/3), win/lose
    -question: text, correct answer
    -turn: question number, decrease a life

  order of initialization 
    1. players
    2. games
    3. turns
    4. questions

  public methods
    -create players
    -create game
    -lose a life
    -question & answer
  
  current_player managed by or turn
  user i/o: players, question, game 

Gameplay:
-A game is begun by calling `game`
-A math question is randomly created and asked to one player
-The player enters their answer
-The game says if it's correct or incorrect
=> If incorrect, the player loses a life
-The game prints the score: `P1 2/3 vs P2 0/3`
-The game prints `---- NEW TURN ----`
=>If a player loses, the game ends, and the other player wins
=>If 20 turns are taken, the player with the most lives wins
=>There can be a tie
-The game prints `---- GAME OVER ----`
-The game says `goodbye` and stops.