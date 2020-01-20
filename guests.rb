class Guest

  attr_reader :name, :money, :favourite_song

  def initialize(name, money, favourite_song)
    @name = name
    @money = money
    @favourite_song = favourite_song
  end

  def favourite_song_playing
    for song in @room.songs
      if song.name == @favourite_song
        return "Yes Mate!!"
      end
    end
  end

end
