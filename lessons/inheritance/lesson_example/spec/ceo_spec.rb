require './lib/ceo'

RSpec.describe Ceo do

  describe "setup" do
    it "exists" do
      ceo = Ceo.new("Jeff", 12345, 15,20)
    end
    it "has base_salary and bonus attributes" do
      ceo = Ceo.new("Jeff", 12345, 15,20)
      expect(ceo.base_salary).to eq(15)
      expect(ceo.bonus).to eq(20)
    end
  end

  describe "Has a name, ID, and total_compensation" do
    # Write tests to prove that a Ceo instance can have a Name and ID number, like any other Employee.
    it 'has atts' do
      ceo = Ceo.new("Jeff", 12345, 15,20)
      expect(ceo.name).to eq("Jeff")
      expect(ceo.id).to eq(12345)
    end

    # Also, the CEO should be able to receive a total compensation. Write at least one test that 
    # proves they can access this method.
    it 'can have total comp' do
      ceo = Ceo.new("Jeff", 12345, 15,20)
      expect(ceo.total_compensation).to eq(35)
    end
  end

end