class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(item)
    @dishes << item
  end

  def get_all_from_category(dish_category)
    categorized_dishes = dishes.select do |dish|
      dish.category == dish_category
    end
  end
end