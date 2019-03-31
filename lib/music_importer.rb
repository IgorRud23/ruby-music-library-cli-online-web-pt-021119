class MusicImporter

attr_reader :path

def initialize(path)
@path = path

end

def files
Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/", "")}
end

def import
  new_files = self.files
		new_files.each do |file|
			new_song = Song.create_from_filename(file)
		end 
#Song.create_from_filename(file_name)
end

end
