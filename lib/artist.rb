class Artist
    attr_accessor :name, :song

    @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
   
  def songs
    Song.all.select {|song|song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(artistname)
      found = @@all.find{|artist| artist.name == artistname}
      if found 
        return found
      else
        Artist.new(artistname) = artist_new
      end
       artist_new
  end


end