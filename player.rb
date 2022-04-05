require './question'

class Player
  def initialize(numLives)
    @numLives = numLives - 1
  end

  def calculate()
    userInput = gets.chomp
    if (userInput == (Question.num1 + Question.num2))
      # next question
    else
      numLives
    end
  end
end