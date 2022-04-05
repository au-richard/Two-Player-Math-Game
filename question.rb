require './game'

class Question
  def initialize()
    @num1 = rand(1...20)
    @num2 = rand(1...20)
  end

  def prompt()
    return "What is #{@num1} + #{@num2}?"
  end

  def verifyAnswer(playerInput)
    expectedOutput = @num1 + @num2
    # puts expectedOutput
    # puts playerInput
    # raise expectedOutput.inspect
    # raise playerInput.inspect

    return expectedOutput === playerInput.to_i

  end
end