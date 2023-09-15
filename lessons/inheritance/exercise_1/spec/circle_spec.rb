require './lib/circle'

RSpec.describe "@Circles" do
  describe 'Circles have attributes' do
      it 'has atts' do
        circle = Circle.new("Red", 4)
        expect(circle.color).to eq("Red")
        expect(circle.radius).to eq(4)
      end

      it 'has a circumference' do
        circle = Circle.new("Red", 4)
        expect(circle.circumference).to eq(25.12)
      end
  end
end