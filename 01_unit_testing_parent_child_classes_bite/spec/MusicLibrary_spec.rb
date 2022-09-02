require "MusicLibrary"

RSpec.describe MusicLibrary do
  it "adds and lists tracks" do
    music_lib = MusicLibrary.new
    track_1 = double :track
    track_2 = double :track
    music_lib.add(track_1)
    music_lib.add(track_2)
    expect(music_lib.all).to eq [track_1, track_2]
  end

  it "searches track that matches" do
    music_lib = MusicLibrary.new
    track_1 = double :track
    expect(track_1).to receive(:matches?).with("College Dropout").and_return(true)
    track_2 = double :track
    expect(track_2).to receive(:matches?).with("College Dropout").and_return(false)
    music_lib.add(track_1)
    music_lib.add(track_2)
    expect(music_lib.search("College Dropout")).to eq [track_1]
  end
end