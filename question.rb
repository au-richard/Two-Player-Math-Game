class Question
  def initialize(question)
    @num1 = rand(1...20)
    @num2 = rand(1...20)
  end

  def prompt()
    return "What is #{num1} + #{num2}?"
  end
end