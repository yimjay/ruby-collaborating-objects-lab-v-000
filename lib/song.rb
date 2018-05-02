class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name =  name
  end
  
  def self.new_by_filename(file)
    artist, name = file.split(" - ")
    new_song = self.new(name)
    new_song.artist = artist
  end

  def artist_name=(name)
    Artist.find_or_create_by_name(name)
  end

end