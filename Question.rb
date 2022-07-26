class Question

  attr_accessor :first_num, :second_num, :answer, :player

  def initialize(player)
    @first_num = rand(20) + 1
    @second_num = rand(20) + 1
    @answer = @first_num + @second_num
    @player = player
  end

def create_question(player)
  puts "#{@player}: What is #{@first_num} + #{@second_num}?"
end


end