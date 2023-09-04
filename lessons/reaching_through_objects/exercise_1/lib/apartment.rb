class Apartment
  attr_reader :rented, :rooms
  
  def initialize
    @rented = false
    @rooms = []
  end

  def is_rented?
    @rented
  end

  def rent
    @rented = true
  end

  def add_room(room_name)
    if @rooms.count >= 4
      return
    else
      @rooms << room_name
    end
  end

  def list_rooms_by_name_alphabetically
    aplebetical_rooms = []
    @rooms.each do |room|
      aplebetical_rooms << room.name
    end
    aplebetical_rooms.sort
  end
end