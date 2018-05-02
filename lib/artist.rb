class Artist 
  attr_accessor :name, :songs
  
  @@all_artists = []
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end
    
  def self.find(name)
    @@all_artists.find {|artist| artist.name == name}
  end
  
  def self.create(name)
    @@all_artists << self.new(name)
  end
  
end