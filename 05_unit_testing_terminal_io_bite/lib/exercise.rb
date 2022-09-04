class InteractiveCalculator
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will subtract two numbers."
    @terminal.puts "Please enter a number"
    first = get_number
    @terminal.puts "Please enter another number"
    second = @terminal.gets.chomp.to_i
    result = first - second
    @terminal.puts "Here is your result:"
    @terminal.puts "#{first} - #{second} = #{result}"
  end

  private

  def get_number
    response = @terminal.gets
    return response.to_i if response.to_i.to_s == response
    fail "You must enter a number"
  end
end

# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1