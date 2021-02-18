class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def find_or_create_by_name(name)
    if @@all.select {|artist| artist.name == name}
    else initialize(name)
    end
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def print_songs
    Song.all.select {|song| song.artist == self}
  end

  def self.all
    @@all
  end

end
