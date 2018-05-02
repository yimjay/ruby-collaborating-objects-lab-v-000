class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
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
    puts @songs
  end
 
end