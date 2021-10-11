# classes:
# Player -- keeps track of player name and # of lives

class Player
  attr_accessor :lives, :name

  def initialize(n)
    @name = n
    @lives = 3
  end

  def alive?
    self.lives > 0
  end

end

# Game -- init with both players, keeps track of score, turns and if it's game over or not

class Game < Player
  attr_reader :player1, :player2
  attr_accessor :current_player, :game_over

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @game_over = false
  end

  def game_over?
    if player1.lives === 0 || player2.lives === 0
      self.game_over = true
    end

    self.game_over === true
  end

  def change_turn
    if self.current_player === player1
      self.current_player = player2
    else self.current_player === player2
      self.current_player = player1
    end
  end

end

# Questions -- randomized math question

class Question
  attr_reader :num1, :num2, :answer

  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = num1 + num2
  end

  def prompt
    "What does #{num1} plus #{num2} equal?"
  end

end




