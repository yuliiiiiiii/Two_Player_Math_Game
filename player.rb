class Player
  def initialize(name)
    @name = name
    @lives = 3
  end
  
  attr_accessor :name, :lives

  def reduce_lives
    @lives -= 1
  end

  def is_dead
    @lives == 0
  end

  def get_player_answer
    create_question = Questions.new
    current_question = create_question.question(name)
    print ">"
    input = $stdin.gets.chomp.to_i
    if create_question.answer(input)
      puts "Yes! You are correct."
    else 
      puts "Seriously? No!"
      reduce_lives
    end
  end
    
end

