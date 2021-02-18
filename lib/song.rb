class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    filename.split(" - ")
    @name = filename[0]
    @artist = filename[1]
    song = self.new(name)
    self.artist = artist
  end

  def artist_name=(name)
    Artist.find_or_create_by_name(artist)
  end

end
