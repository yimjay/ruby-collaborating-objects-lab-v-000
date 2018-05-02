class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name =  name
  end
  
  def self.new_by_filename(file)
    artist, name = file.split(" - ")
    new_song = self.new(name)
    new_song.artist = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end