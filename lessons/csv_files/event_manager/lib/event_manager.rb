class EventManager
  attr_reader :attendees, :display

  def initialize
    @attendees = []
    @display = []
  end

  def clean_zipcode(zipcode)
    clean_ zip = zipcode.to_s.rjust(5,'0')[0..4]
  end

  def show_attendees
    attendents = CSV.open './data/event_attendees.csv', header: true, header_converters: :symbol

    attendents.each do |row|
      id = row[:id]
      name = "#{row[:first_name]} #{row[:last_name]}"
      zipcode = clean_zipcode(row[:zipcode])
      
      @display += "#{id}: #{name}, #{zipcode}"
    end
  end
end