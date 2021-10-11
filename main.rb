require "./player"
require "./game"
require "./question"

johnny = Player.new("Johnny")
agata = Player.new("Agata")

game1 = Game.new(johnny, agata)
puts game1.current_player.name
game1.change_turn
puts game1.current_player.name