require './lib/activity'

RSpec.describe '#Activity' do 
  before(:each) do
    @activity = Activity.new("Brunch")
  end
  describe 'existance' do
    it 'exists' do
      expect(@activity).to be_instance_of Activity
    end

    it 'has attributes' do
      expect(@activity.name).to eq("Brunch")
      expect(@activity.participants).to eq({})
    end
  end

  describe 'add participants' do
    it 'can add a practicipant' do
      @activity.add_participant("Maria", 20)
      expect(@activity.participants).to eq({"Maria" => 20})
      expect(@activity.total_cost).to eq 20
    end

    it 'can have multiple' do
      @activity.add_participant("Maria", 20)
      @activity.add_participant("Luther", 40)

      expect(@activity.participants).to eq({"Maria" => 20, "Luther" => 40})
      expect(@activity.total_cost).to eq 60
    end
  end

  ### Start iteration 2

  describe '#Splitting costs' do
    it 'can split costs among friends' do
      @activity.add_participant("Maria", 20)
      @activity.add_participant("Luther", 40)

      expect(@activity.split).to eq(30)
      expect(@activity.owed).to eq({"Maria" => 10, "Luther" => -10})
    end
  end
end