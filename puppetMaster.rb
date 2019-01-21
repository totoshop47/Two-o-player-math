class Puppetmaster
  def initialize
    @gameState = 'off'
    @turnState = 1 # player1 = 1, player2 = 2
  end

  def startGame
    #start the game
    @gameState = 'on'
    # Create the objects
    player1 = Player.new(1)
    player2 = Player.new(2)

    while @gameState == 'on'
      question = Question.new()
      if @turnState == 1
        # Generate Question
        question.generate(player1.number)
        @turnState = 2
        # Get User Input
        userAnswer = gets.chomp
        #Check answer
        player1.updateScore(question.checkAnswer(userAnswer))
      else
        # Generate Question
        question.generate(player2.number)
        @turnState = 1
        # Get User Input
        userAnswer = gets.chomp
        #Check answer
        player2.updateScore(question.checkAnswer(userAnswer))
      end

      if player1.lives == 0 || player2.lives == 0
        puts "---- GAME OVER ----"
        puts "Good bye!"
        @gameState = 'off'
      else
        puts "---- NEW TURN ----"
      end
    end
  end

  def endGame
    #end the game
    @gameState = 'off'
  end
end