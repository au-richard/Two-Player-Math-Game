class Question
  attr_reader :num1, :num2
  def initialize()
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @expectedOutput = @num1 + @num2
  end

  def prompt(name)
    puts "#{name}: What is #{@num1} + #{@num2}?"
  end

  def verifyAnswer(playerInput)
    @expectedOutput === playerInput.to_i
  end

end