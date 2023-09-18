require './lib/reunion'
require './lib/activity'

RSpec.describe '#Reunion' do
  before(:each) do
    @reunion = Reunion.new("1406 BE")
    @activity_1 = Activity.new("Brunch")
  end
  describe '#Setup' do
    it 'can exist' do
      expect(@reunion).to be_instance_of Reunion
    end

    it 'has attributes' do
      expect(@reunion.name).to eq("1406 BE")
      expect(@reunion.activities).to eq([])
    end
  end

  describe '#Adding activities' do
    it 'can add and read' do
      @reunion.add_activitiy(@activity_1)
      expect(@reunion.activities).to eq([@activity_1])
    end
  end
end
