require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../rooms')
require_relative('../songs')
require_relative('../guests')

class TestRoom < Minitest::Test

  def setup

    @song1 = Song.new("Toxic by Britney Spears")
    @song2 = Song.new("Boom, Boom, Boom, Boom!! by Vengaboys")
    @song3 = Song.new("Believe by Cher")

    @room1 = Room.new("East Wing Suite", 2, 5)
    @room2 = Room.new("West Wing Suite", 2, 5)
    @room3 = Room.new("Royal Suite", 3, 15)

    @guest1 = Guest.new("Harley", 0, @song1)
    @guest2 = Guest.new("Freddie Mercury", 500, @song2)
    @guest3 = Guest.new("Izzy", 50, @song3)

  end
  #
  def test_return_name
    assert_equal("Royal Suite", @room3.name)
  end


  def test_check_in_guest
    assert_equal(1, @room2.check_in_guest(@guest2))
  end
  #
  def test_check_out_guest
    assert_equal(0, @room3.check_out_guest(@guest1))
  end

  def test_add_songs_to_room
    assert_equal(1, @room3.add_song_to_room(@song3))
  end

  def test_at_capacity
    assert_equal(false, @room2.at_capacity)
  end

def test_enough_cash_to_enter
  assert_equal(false, @room2.enough_cash_to_enter(@guest1))
end




end
