class MP3Importer
  attr_accessor :path, :mp3s 
  
  def initialize (file_path)
    @path = file_path
  end
  def files
    @mp3s = Dir.entries(@path).select{|file| file.include?(".mp3")}
  end
  def import 
    @mp3s.each do |mp3|
      Song.new_by_filename(mp3)
    end
  end
end