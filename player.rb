require './question'

class Player
  attr_accessor :playerId
  def initialize(numLives, playerId)
    @numLives = numLives - 1
    @playerId = playerId
  end

  def decreaseLife()
    
  end


end