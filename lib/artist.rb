require 'pry'

class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)

    @name = name
    @@all << self

  end

  def self.all
    @@all
  end


  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def new_song(song_name, genre)
    # a new song gets instantiated
    # song instance needs to know that it belongs to the artist
    Song.new(song_name, self, genre)
  end

  def genres         #has many genres, through songs
      # iterate over the artist's songs

    self.songs.map do |song_object|
      song_object.genre
    end
  end
    # e.g. jay_z.songs  - returns an array of objects
# => [#<Song:0x007fa17b2e53a0 @artist=#<Artist:0x007fa17b35d120 @name="Jay-Z">, @genre=nil, @name="99 Problems">,
#  #<Song:0x007fa17b9a0c30 @artist=#<Artist:0x007fa17b35d120 @name="Jay-Z">, @genre=nil, @name="Big Shrimpin">,
#  #<Song:0x007fa17b971a98 @artist=#<Artist:0x007fa17b35d120 @name="Jay-Z">, @genre=nil, @name="Lucifer">]

    # collects the genre of each song

end

 # binding.pry
