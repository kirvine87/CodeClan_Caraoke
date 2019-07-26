require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')

class RoomTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Ricky Tavy")
    @guest2 = Guest.new("Remi Fangpher")
    @room = Room.new("Lightning Strikes")
  end

  def test_get_room_name
    assert_equal("Lightning Strikes", @room.name)
  end

  def test_check_in_count
    assert_equal(0, @room.check_in_count())
  end

  def test_guest_checked_in
    @room.guest_check_in(@guest1)
    assert_equal(1, @room.check_in_count())
  end

  def test_guest_checked__out
    @room.guest_check_in(@guest1)
    @room.guest_check_in(@guest2)
    @room.guest_checked_out(@guest2)
    assert_equal(1, @room.check_in_count())
  end

end
