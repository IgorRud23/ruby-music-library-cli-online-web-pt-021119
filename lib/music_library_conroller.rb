class MusicLibraryController

def initialize(path='./db/mp3s')
    newImporter = MusicImporter.new(path)
    Song.all << newImporter.import
  end


end
