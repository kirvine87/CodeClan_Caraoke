class Room

  attr_reader :name, :capacity, :total_cash

  def initialize(name, capacity, fee)
    @name = name
    @rooms = []
    @songs = []
    @check_in = []
    @capacity = capacity
    @fee = fee
    @total_cash = 0
  end

  def check_in_count()
    @check_in.count()
  end

  def guest_check_in(guest)
    @check_in << guest
  end

  def guest_checked_out(guest)
    @check_in.delete(guest)
  end

  def song_count()
    @songs.count()
  end

  def add_song(song)
    @songs << song
  end

  def no_more_room()
    if check_in_count() > @capacity
      return true
    else
      return false
    end
  end

  def recieve_cash()
    @total_cash += @fee
  end

  def pay_fee(guest)
    if @fee < guest.money && no_more_room() == false
      guest.remove_money(@fee)
      recieve_cash()
      return true
    else
      return false
    end
  end


end
