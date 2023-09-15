# require 'attendee'

class EventManager 
  attr_reader :attendees, :display

  def initialize
    @attendees = []
    @display = []
  end

  def add_attendee(attendee)
    @attendees << attendee
  end

  def display_attendees
    displayed = []
    
    @attendees.each do |attendee|
      displayed << "#{attendee.id}: #{attendee.name}, #{attendee.zipcode}"
    end
    displayed.join
  end
end