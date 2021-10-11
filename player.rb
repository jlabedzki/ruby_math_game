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