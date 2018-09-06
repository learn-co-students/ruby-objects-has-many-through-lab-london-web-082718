require 'pry'

class Genre

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
    # iterates through all the songs and finds songs which belong to genre
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    # iterate over the genre's collection of songs
    self.songs.map do |song_obj|
      song_obj.artist
    end
  end

end

 # binding.pry
