class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
    
  def add_song(song)
    song.artist = self
    self.songs << song
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end
  
  def song_count
    self.songs.count
  end
  
end
  
