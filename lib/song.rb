class Song
    attr_accessor :name, :artist
    @@all =[]

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def self.parse_filename(filename)
        song_array = filename.split(' - ')
        song_array.pop
        song_array
    end

    def artist_name=(artist)
        self.artist = Artist.find_or_create_by_name(artist)
    end

    def self.new_by_filename(filename)
        name_array = parse_filename(filename)
        song = self.new(name_array[-1])
        song.artist_name = name_array[0]
        song
    end


end