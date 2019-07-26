require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class RoomTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Ricky Tavy", 50, "White Flag")
    @guest2 = Guest.new("Remi Fangpher", 35, "Umbrella")
    @guest3 = Guest.new("Frank Knott", 74, "Livin' on a Prayer")
    @guest4 = Guest.new("Dave Rome", 39, "Eye of the Tiger")
    @guest5 = Guest.new("Jack Ser", 104, "Our House in the Middle of the Street")
    @guest6 = Guest.new("Marths", 150, "Sk8er Boi")
    @room = Room.new("Lightning Strikes", 5, 30)
    @song1 = Song.new("Livin' On A Prayer")

  end

  def test_get_room_name()
    assert_equal("Lightning Strikes", @room.name)
  end

  def test_check_in_count()
    assert_equal(0, @room.check_in_count())
  end

  def test_guest_checked_in()
    @room.guest_check_in(@guest1)
    assert_equal(1, @room.check_in_count())
  end

  def test_guest_checked__out()
    @room.guest_check_in(@guest1)
    @room.guest_check_in(@guest2)
    @room.guest_checked_out(@guest2)
    assert_equal(1, @room.check_in_count())
  end

  def test_song_count()
    assert_equal(0, @room.song_count)
  end

  def test_add_song_to_room()
    @room.add_song(@song1)
    assert_equal(1, @room.song_count())
  end

  def test_no_more_room()
    @room.guest_check_in(@guest1)
    @room.guest_check_in(@guest2)
    @room.guest_check_in(@guest3)
    @room.guest_check_in(@guest4)
    @room.guest_check_in(@guest5)
    @room.guest_check_in(@guest6)
    assert_equal(true, @room.no_more_room())
  end

  def test_recieve_cash()
    assert_equal(30, @room.recieve_cash)
  end

  def test_pay_fee()
    assert_equal(true, @room.pay_fee(@guest6))
    assert_equal(30, @room.total_cash)
  end



end
