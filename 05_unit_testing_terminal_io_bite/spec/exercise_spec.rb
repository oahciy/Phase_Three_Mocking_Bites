require 'exercise'

RSpec.describe InteractiveCalculator do
  it "substracts two numbers" do
    terminal = double(:terminal)
    expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("10").ordered
    expect(terminal).to receive(:puts).with("Please enter another number").ordered
    expect(terminal).to receive(:gets).and_return("3").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("10 - 3 = 7").ordered
    interactive_calculator = InteractiveCalculator.new(terminal)
    interactive_calculator.run
  end

  it "fails" do
    terminal = double(:terminal)
    expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("Hello")
    interactive_calculator = InteractiveCalculator.new(terminal)
    expect {interactive_calculator.run}.to raise_error "You must enter a number"
  end
end