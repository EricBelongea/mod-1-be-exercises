require './lib/event_manager'
require './lib/attendee'
require 'csv'

RSpec.describe "#Event Manager" do
  before :each do
    # @person_1 = Attendee.new(1, "Allison", "Nguyen", "20010")
    # @person_2 = Attendee.new(4, "David", "Thomas", "7306")
    # @person_3 = Attendee.new(5, "Chris", "Sackett", nil)
    # @person_4 = Attendee.new(7, "Mary Kate", "Curry", "212305")
    @contents = CSV.open './data/event_attendees.csv', headers: true, header_converters: :symbol
    
    @event_manager = EventManager.new(@contents)
  end
  describe '#Setup' do
    it 'exists' do
      expect(@event_manager).to be_instance_of EventManager
    end

    it 'contains attributes' do
      expect(@event_manager.attendees).to eq([])
      expect(@event_manager.display).to eq([])
    end
  end

  xdescribe '#Creates a attendee array' do
    it 'can add people' do
      expect(@event_manager.add_attendee).to eq(["Allison Nguyen", "Sarah Hankins", "Sarah Xx", "David Thomas", "Chris Sackett", "Aya Fuller", "Mary ...Laura Rapetsky", "Paul Fulghum", "Shannon Warner", "Shannon Davis", "Nash Okaty", "Amanda Hartzell"])
    end
  end

  describe "#Attendant Display" do
    it 'can create displays' do
      # @event_manager.add_attendee(@person_1)
      # @event_manager.add_attendee(@person_2)
      # @event_manager.add_attendee(@person_3)
      # @event_manager.add_attendee(@person_4)
      # require 'pry'; binding.pry
      expect(@event_manager.display_attendees).to eq("1: Allison Nguyen, 20010")
    end
  end
end