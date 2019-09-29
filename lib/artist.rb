class Artist
  attr_accessor :name, :song
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
    
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    Song.new(song_name)
    @songs << song_name
    song.artist = self
  end
end
  
