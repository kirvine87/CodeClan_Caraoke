require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class GuestTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Jon Jones", 50, "Umbrella")
  end

  def test_get_name_of_guest()
    assert_equal("Jon Jones", @guest.name)
  end

  def test_get_guest_money()
    assert_equal(50, @guest.money)
  end

  def test_remove_money()
    assert_equal(30, @guest.remove_money(20))
  end

  def test_fav_song()
    assert_equal("Umbrella", @guest.fav_song)
  end

  def test_fav_song_on()
    assert_equal("Mmm this ma jam", @guest.fav_song_on(@guest))
  end

end
