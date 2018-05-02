class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name =  name
  end
  
  def self.new_by_filename(file)
    artist, song, genre = file.split(" - ")
    new_song = Song.new(song)
    new_song.artist = artist
  end

end