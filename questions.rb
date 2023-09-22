class Questions
  def initialize
    @num1=rand(1..20)
    @num2=rand(1..20)
    @sum=@num1 + @num2
  end

  def question(name) 
    puts "#{name}: What does #{@num1} plus #{@num2} equal?"
    #self
    #the methods only puts the question, it doesn't return anything. So need to use "self" to return a reference to the instance itself
  end

  def answer(input)
    @sum == input
  end

end
