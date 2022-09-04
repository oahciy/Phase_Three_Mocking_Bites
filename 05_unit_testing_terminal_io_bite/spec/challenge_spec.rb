require 'challenge'

RSpec.describe StringRepeater do
  it "takes a string and repeats it for given times" do
    io = double(:io)
    expect(io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(io).to receive(:puts).with("Please enter a string").ordered
    expect(io).to receive(:gets).and_return("Hi").ordered
    expect(io).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(io).to receive(:gets).and_return("3").ordered
    expect(io).to receive(:puts).with("Here is your result:").ordered
    expect(io).to receive(:puts).with("HiHiHi").ordered

    string_repeater = StringRepeater.new(io)
    string_repeater.run
  end
end