require "MusicLibrary"
require "track"

RSpec.describe "integration" do
  it "adds and lists tracks" do
    music_lib = MusicLibrary.new
    track_1 = Track.new("College Dropout", "Kanye West")
    track_2 = Track.new("Jesus is King", "Kanye West")
    music_lib.add(track_1)
    music_lib.add(track_2)
    expect(music_lib.all).to eq [track_1, track_2]
  end

  it "searches track by title" do
    music_lib = MusicLibrary.new
    track_1 = Track.new("College Dropout", "Kanye West")
    track_2 = Track.new("Jesus is King", "Kanye West")
    music_lib.add(track_1)
    music_lib.add(track_2)
    expect(music_lib.search("College Dropout")).to eq [track_1]
  end
end