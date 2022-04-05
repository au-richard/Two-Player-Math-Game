require './player'

class Game
  attr_accessor :score
  def initialize()
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def start
    puts "Starting the game"
    currentGame
  end

  def currentGame
    @player1.askQuestion
    @player2.askQuestion
    checkScore
    checkLives
    puts "-----NEW TURN-----"
    currentGame
  end 

  def checkScore
    puts "Player #{@player1.name}: #{@player1.numLives}/3 vs. #{@player2.name}: #{@player2.numLives}/3 "
  end

  def checkLives
    if @player1.lost 
      puts "Player #{@player2.name} wins with a score of #{@player2.numLives}/3"  
      puts "----GAME OVER----"
      exit(0)
         
    end  
    if @player2.lost
      puts "#{@player1.name} wins with a score of #{@player1.numLives}/3"  
      puts "----GAME OVER----"
      exit(0)
    end

  end

end
