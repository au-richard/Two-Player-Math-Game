class Player
  attr_accessor :name, :numLives
  def initialize(name)
    @numLives = 3
    @name = name
  end

  def decreaseLife
    @numLives -= 1
  end

  def lost
    @numLives == 0
  end

  def askQuestion
    mathQuestion= Question.new
    mathQuestion.prompt(name)
    playerInput = gets.chomp
    verify = mathQuestion.verifyAnswer(playerInput)
    if verify == true
      puts "#{name}: YES! You are correct."
    else
      puts "#{name}: WRONG! " 
      decreaseLife      
    end

  end

end