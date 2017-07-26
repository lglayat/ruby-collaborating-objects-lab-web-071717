class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find(name)
    self.all.find {|artst| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    var = @@all.detect{|artist| artist.name == name}
    if var.class == Artist
      return var
    else
      var2 = Artist.new(name)
      return var2
    end
  end

end
