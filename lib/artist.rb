class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def find_or_create_by_name(name)
    if @@all.select {|artist| artist.name == name}
    else initialize(name)
    end
  end

  def print_songs
    @songs #this is an array of instnces, need to pull out the name attribute?
  end

end
