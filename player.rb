class Player
  attr_reader :number
  attr_reader :lives
  def initialize(number)
    @lives = 3
    @number = number
  end

  def updateScore(userAnswerCorrect)
    if userAnswerCorrect
      puts "your score #{@lives} "
    else
      @lives = @lives - 1
      puts "deducting score #{@lives}"
    end
  end
end