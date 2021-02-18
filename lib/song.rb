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
    filename[0] = @name
    filename[1] = @artist
    initialize(filename[0])
  end


  def artist_name=
  end

end
