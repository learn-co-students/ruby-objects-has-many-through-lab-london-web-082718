require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)

    @name = name
    @artist = artist
    @genre = genre

    @@all << self

  end

  def self.all
    @@all
  end



end

#
# ninety_nine_problems = Song.new("99 Problems", "jay_z", "rap")
#
# binding.pry
