require "diary"

RSpec.describe Diary do
  it "constructs" do
    diary = Diary.new("Today is a nice day")
    expect(diary.read).to eq "Today is a nice day"
  end
end