# require 'attendee'

class EventManager 
  attr_reader :attendees, :display, :contents

  def initialize(contents)
    @contents = CSV.open './data/event_attendees.csv', headers: true, header_converters: :symbol
    @attendees = []
    @display = []
  end

  def add_attendee
    @attendees = @contents.map do |row|
      "#{row[:first_name].capitalize} #{row[:last_name].capitalize}"
    end
  end

  def clean_zipcodes(zipcode)
    zipcode.to_s.rjust(5, '0')[0..4]

  end

  def display_attendees
    displayed = []
    @contents.each do |row|
      id = row[:id]
      name = "#{row[:first_name].capitalize} #{row[:last_name].capitalize}"
      zipcode = clean_zipcodes(row[:zipcode])

      displayed << "#{id}: #{name}, #{zipcode}"
    end
     displayed
  end
end