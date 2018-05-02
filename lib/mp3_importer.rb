class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.glob("#{path}/*.mp3").map {|file| file.gsub("#{path}/", "")}
  end
  
  def import
    @files.each {|file| file.new_by_}
  end

end