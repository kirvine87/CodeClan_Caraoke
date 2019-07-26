require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')

class RoomTest < MiniTest::Test

  def setup()
    @room = Room.new("Lightning Strikes")
  end

  def test_get_room_name
    assert_equal("Lightning Strikes", @room.name)
  end

end
