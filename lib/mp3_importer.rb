class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    true_path = "#{@path}/*.mp3"
    collection = Dir[true_path]
    collection.map do |song|
      song.split("/").last
    end
  end

  def import
    # binding.pry
    files.each do |song_string|
      Song.new_by_filename(song_string)
    end
  end

end
