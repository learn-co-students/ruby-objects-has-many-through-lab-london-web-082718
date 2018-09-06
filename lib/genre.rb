class Genre

  attr_accessor :name, :songs, :artist


@@genres = []

  def initialize(name)
    @name = name
    @@genres << self
  end

  def songs
      Song.all.select {|song| song.genre == self}
    end

  def artists
    # binding.pry
    Song.all.collect do |song|
      if song.genre = self
      song.artist
    end
  end
  end


end
