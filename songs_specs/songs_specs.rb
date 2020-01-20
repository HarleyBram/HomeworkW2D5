require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../rooms')
require_relative('../songs')
require_relative('../guests')

class TestSong < Minitest::Test

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

  def test_return_name
    assert_equal("Believe by Cher", @song3.name)
  end


end
