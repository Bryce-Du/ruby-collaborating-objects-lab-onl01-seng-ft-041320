class MP3Importer
  def initialize (file_path)
    @path = file_path
  end
  def import
    Dir["/path/to/search/**/*.rb"]
  end
end