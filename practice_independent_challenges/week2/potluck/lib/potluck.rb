require'pry'
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
    categorized_dishes = dishes.select { |dish| dish.category == dish_category }
  end

  def menu
    menu_hash = Hash.new { |hash, key| hash[key] = []}

    @dishes.each do |dish|
      menu_hash[dish.category].push(dish.name)
    end

    sorted_menu = {
      appetizers: menu_hash[:appetizer].sort,
      entres: menu_hash[:entre].sort,
      desserts: menu_hash[:dessert].sort
    }
  end
end