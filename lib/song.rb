class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def self.new_by_filename(filename)
    data = filename.split(" - ")
    song = self.new(data[1])
    song.artist = 
  end
  
  def artist_name=(name)
    Artist.find_or_create_by_name(name)
    
  end
end