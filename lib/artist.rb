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
    if name exists
      
    else
      name = Artist.new(name)
    end
  end
 
end