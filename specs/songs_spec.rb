require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')

class SongTest < MiniTest::Test

  def setup()
    @song = Song.new("Livin' On A Prayer")
  end

  def test_get_song()
    assert_equal("Livin' On A Prayer", @song.name)
  end


end
