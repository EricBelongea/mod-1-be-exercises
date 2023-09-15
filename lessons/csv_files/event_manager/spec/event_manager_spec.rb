require './lib/event_manager'
require './lib/attendee'

RSpec.describe "#Event Manager" do
  before :each do
    @person_1 = Attendee.new(1, "Allison", "Nguyen", "20010")
    @person_2 = Attendee.new(4, "David", "Thomas", "7306")
    @person_3 = Attendee.new(5, "Chris", "Sackett", nil)
    @person_4 = Attendee.new(7, "Mary Kate", "Curry", "212305")
    @event_manager = EventManager.new
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

  describe '#Creates a attendee array' do
    it 'can add people' do
      expect(@event_manager.add_attendee(@person_1)).to eq([@person_1])
    end

    it 'can add multiple' do
      @event_manager.add_attendee(@person_1)
      @event_manager.add_attendee(@person_2)
      @event_manager.add_attendee(@person_3)
      @event_manager.add_attendee(@person_4)

      expect(@event_manager.attendees).to eq([@person_1, @person_2, @person_3, @person_4])
    end
  end

  describe "#Attendant Display" do
    it 'can create displays' do
      @event_manager.add_attendee(@person_1)
      # @event_manager.add_attendee(@person_2)
      # @event_manager.add_attendee(@person_3)
      # @event_manager.add_attendee(@person_4)
      # require 'pry'; binding.pry
      expect(@event_manager.display_attendees).to eq("1: Allison Nguyen, 20010")
    end
  end
end