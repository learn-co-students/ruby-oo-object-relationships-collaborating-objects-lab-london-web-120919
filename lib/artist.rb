class Artist
attr_accessor :name
@@all = []

def initialize(name)
@name = name
@@all.push(self)
end

def self.all
@@all
end

def add_song(song)
    song.artist = self
end

def songs
    Song.all.map { |song| 
        if song.artist == self
        #p song.artist.name
        song
        end
    }.compact
end

def self.artist_find(name)
    self.all.find { |e| e.name == name}
end

def self.create_by_name(name)
    self.new(name)
end

def self.find_or_create_by_name(name)
    artist_find(name) ? artist_find(name) : create_by_name(name)
end

def print_songs
    songs.map { |e| puts e.name}
end

end