class Game < Player
  attr_reader :player1, :player2
  attr_accessor :current_player, :game_over, :winner

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @game_over = false
    @winner
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

  def winner
    if game_over && player1.lives > 0
      self.winner = player1
    else 
      self.winner = player2
    end  
  end

end