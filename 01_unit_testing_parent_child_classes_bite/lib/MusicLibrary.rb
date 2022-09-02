class MusicLibrary
  def initialize
    @list = []
  end

  def add(track)
    @list << track
  end

  def all
    @list
  end
  
  def search(keyword)
    @list.select do |track|
      track.matches?(keyword)
    end
  end
end