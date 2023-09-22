class Games
  def initalize(name)
   @name = name
   @player_1 = Player.new("Player 1")
   @player_2 = Player.new("Player 2")
  end

  def start
    puts "Game starts! Welcome #{@player_1.name} and #{@player_2.name}"
    turn #the function to start new turn
  end

  def turn
    @player_1.get_player_answer
    @player_2.get_player_answer
    check_lives
    get_lives
    puts "----- NEW TURN -----"
    turn # This turn is invoking the turn method recursively. In Ruby, a recursive method is a method that calls itself. In this case, the "turn" method appears to be a part of some game or program logic.
  end

  #check user input and output result and lives
  def get_lives
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
  end

  def check_lives
    if @player_1.is_dead
      winner(@player_2)
    elsif @player_2.is_dead
      winner(@player_1)
    end
  end
  
  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts "----- GAME OVER -----"
    puts "good bye!"
    exit(0) #stop the game
  end

  
end

#don't know where to set game loop: each instance of the loop is the other players turn
