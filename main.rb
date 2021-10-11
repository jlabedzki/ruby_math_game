require "./player"
require "./game"
require "./question"

johnny = Player.new("Johnny")
agata = Player.new("Agata")
game = Game.new(johnny, agata)

def start_game(player1, player2, game)
  while !game.game_over?
    puts "----- NEW TURN -----"

    question = Question.new

    puts "#{game.current_player.name}: #{question.prompt}"

    answer = gets.chomp

    if answer.to_i === question.answer 
      puts "YES! You are correct."
      puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
    else
      game.current_player.lives -= 1
      puts "Seriously? No!"
      puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
    end

    game.change_turn
  end

  puts "#{game.winner.name} wins with a score of #{game.winner.lives}/3"
  puts "----- GAME OVER -----"
  puts "Good bye!"
end

start_game(johnny, agata, game)
