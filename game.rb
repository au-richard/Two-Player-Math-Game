require './question'

class Game
  def initialize()
    
  end

  def start
    puts 'Welcome to my game'
  end

  def playing
    puts Question
  end

  def finished
    puts 'Player 1 wins with a score of 1/3'
    puts '----- GAME OVER -----'
    puts 'Good Bye!'
  end


end