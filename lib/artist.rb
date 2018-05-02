class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(name)
    if @@all.include?(name)
      name
    else
      name = Artist.new(name)
    end
  end
  
  def print_songs
    @songs.each {|song| puts song.name}
  end
 
end