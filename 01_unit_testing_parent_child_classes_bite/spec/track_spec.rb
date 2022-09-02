require "track"

RSpec.describe Track do
  it "matches the keyword in the title" do
    track = Track.new("College Dropout", "Kanye West")
    expect(track.matches?("College Dropout")).to eq true
  end

  it "matches the keyword in the artist" do
    track = Track.new("College Dropout", "Kanye West")
    expect(track.matches?("Kanye")).to eq true
  end

  it " does not matches the keyword in the artist" do
    track = Track.new("College Dropout", "Kanye West")
    expect(track.matches?("Drake")).to eq false
  end
end