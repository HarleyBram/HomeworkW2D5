class Room

  attr_reader :name, :guest_limit, :entry_fee

  def initialize (name, guest_limit, entry_fee)
    @name = name
    @songs = []
    @guests = []
    @guest_limit = guest_limit
    @entry_fee = entry_fee
  end

  def return_name
    return @name
  end

  def check_in_guest(guest)
    if at_capacity() == false && enough_cash_to_enter(guest) == true
      @guests.push(guest)
      return @guests.length
    end
    return "Cannot add guest"
  end

  def check_out_guest(guest)
    @guests.delete(guest)
    return @guests.length
  end

  def add_song_to_room(song)
    @songs.push(song)
    return @songs.length
  end

  def at_capacity
    if (@guests.length >= @guest_limit)
      return true
    else
      return false
    end
  end

  def enough_cash_to_enter(guest)
    if guest.money >= @entry_fee
      return true
    else
      return false
    end
  end





end
