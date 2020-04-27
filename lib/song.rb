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
    new_name = data[1]
    new_song = Song.new(new_name)
    new_song.artist_name = data[0] 
  end
  
  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end
end