class MP3Importer
    attr_accessor :path

def initialize(path)
    @path = path

end

def import
files.map { |e| Song.new_by_filename(e)}
end

def files
files = Dir.entries(self.path)
files.select { |e| e.length > 2}
end


end