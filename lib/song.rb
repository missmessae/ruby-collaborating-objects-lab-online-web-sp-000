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
  end


  def artist_name
    if @artist == nil
      return nil
    else
      @artist.name
    end
  end

end
