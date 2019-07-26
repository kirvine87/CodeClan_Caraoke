class Room

  attr_reader :name

  def initialize(name)
    @name = name
    @rooms = []
    @songs = []
    @check_in = []
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

end
