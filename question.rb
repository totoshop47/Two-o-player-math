class Question

    def initialize
      @randomNum1 = 0
      @randomNum2 = 0
      @answer = 0
    end

    def generate(playerName)
      @randomNum1 = rand(100)
      @randomNum2 = rand(100)
      @answer    = @randomNum1 + @randomNum2
      question   = "Player #{playerName}: What does #{@randomNum1} + #{@randomNum2} equal?"
      puts question
    end

    def checkAnswer(userInput)
      if userInput.to_i == @answer
        puts 'Correct Answer'
        return true
      else
        puts 'Incorrect Answer'
        return false
    end
  end
end