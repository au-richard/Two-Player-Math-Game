require './question'
require './player'


class Game
  def initialize()
    @player1 = Player.new(3, 1)
    @player2 = Player.new(3, 2)
    @currentPlayer = @player1 
    @alive = true
  end
 
  def start
    puts 'Welcome to my game'
    # raise @currentPlayer.inspect
    newQuestion = Question.new
    mathQuestion = "Player #{@currentPlayer.playerId}: #{newQuestion.prompt}"
    puts mathQuestion
    playerInput = gets.chomp()
    # puts newQuestion.verifyAnswer(playerInput)
    isCorrect = newQuestion.verifyAnswer(playerInput)

    
    if (isCorrect)
      puts 'Yes! You are correct!'
      if(@currentPlayer.playerId === @player1.playerId)
        @currentPlayer = @player2
        puts mathQuestion
      else
        @currentPlayer = @player1
        puts mathQuestion
      end
    end
  end


  def finished
    puts 'Player 1 wins with a score of 1/3'
    puts '----- GAME OVER -----'
    puts 'Good Bye!'
  end


end


# update current player
# update alive variable
# update players lives
