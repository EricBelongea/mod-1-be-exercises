require './lib/event_manager'

RSpec.describe "#Event Manager" do
  describe '#Setup' do
    it 'exists' do
      event_manager = EventManager.new
      expect(event_manager).to be_instance_of EventManager
    end

    it 'contains attributes' do
      event_manager = EventManager.new
      expect(event_manager.attendees).to eq([])
      expect(event_manager.display).to eq([])
    end
  end

  describe '#Creates a attendee array' do
    it 'can add people' do
      event_manager = EventManager.new
      expect(event_manager.attendees).to eq([])
    end
  end
end