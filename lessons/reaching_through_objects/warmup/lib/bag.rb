class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
   @candies == []
  end

  def count
    @candies.count
  end

  def add_candy(candy_type)
    @candies << candy_type
  end

  def contains?(candy_type)
    @candies.each do |candy|
      if candy.type == candy_type
        return true
      end
    end
    false
  end
end