class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
  end


  def songs
    Song.all {|song| song.genre == self}
  end

  def artists
    songs.collect {|song| song.artist}
  end

  def add_song
    self.songs << song
  end

end
