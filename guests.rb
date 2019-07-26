class Guest

  attr_reader :name, :money, :fav_song

  def initialize(name, money, fav_song)
    @name = name
    @money = money
    @fav_song = fav_song
  end

  def remove_money(money)
    @money -= money
  end

  def fav_song_on(guest)
    if guest.fav_song == @fav_song
      return "Mmm this ma jam"
    end
  end

end
