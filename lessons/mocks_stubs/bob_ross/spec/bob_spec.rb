require 'rspec'
require './lib/bob'
require './lib/paint'

RSpec.describe Bob do
  describe 'Instantiation' do
    it 'exists' do
      bob = Bob.new

      expect(bob).to be_an_instance_of(Bob)
    end

    it 'starts with no paints' do
      bob = Bob.new

      expect(bob.paints).to eq([])
    end
  end

  describe 'Methods' do
    it 'can add paint' do
      bob = Bob.new
      # paint_1 = Paint.new("Alizarin Crimson")
      # paint_2 = Paint.new("Van Dyke Brown")
      paint_1 = double("You could pass in a string if you want, but this is entirely for you")
      paint_2 = double 

      bob.add_paint(paint_1)
      bob.add_paint(paint_2)

      expect(bob.paints).to eq([paint_1, paint_2])
    end

    # Below shows Mocks & Stubs in unison 
    it 'can return paint colors' do
      bob = Bob.new
      paint_1 = double("Alizarin Crimson")
      paint_2 = double("Van Dyke Brown")
     # Mock ^^ 'double'
      bob.add_paint(paint_1)
      bob.add_paint(paint_2)
      # Stub below
      allow(paint_1).to receive(:color).and_return("Alizarin Crimson")
      allow(paint_2).to receive(:color).and_return("Van Dyke Brown")

      expect(bob.paint_colors).to eq(["Alizarin Crimson", "Van Dyke Brown"])
    end

    # You don't need a Mock to use a Stub: We used both mock and stub.
    it 'can calculate total paint amount' do
      bob = Bob.new
      paint_1 = double
      paint_2 = double

      # This is using Stubs. We only need to access the amount, so we don't include the name.
      allow(paint_1).to receive(:amount).and_return(42)
      allow(paint_1).to receive(:color).and_return("Alizarin Crimson")
      # The above allows you to create multiple types of attributes to one object instance.
      # require 'pry'; binding.pry
      allow(paint_2).to receive(:amount).and_return(25)


      bob.add_paint(paint_1)
      bob.add_paint(paint_2)

      expect(bob.total_paint_amount).to eq(67)
    end
  end
end
