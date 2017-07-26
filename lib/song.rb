class Song

  @@all = []

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.save
    artist.add_song(self)
  end

  def self.new_by_filename(name)
    arr = name.split(" - ")
    song_name = arr[1]
    artist_name = arr[0]

    song = self.new(song_name)
    song.artist_name = artist_name

    song.save
  end

end
