require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class GuestTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Jon Jones")
  end

  def test_get_name_of_guest()
    assert_equal("Jon Jones", @guest.name)
  end

end
