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
    # big_menu = {:appetizer => apps.sort, :entre => entres.sort, :dessert => desserts.sort}

    apps = dishes.select { |dish| dish.category == :appetizer }
    entres = dishes.select { |dish| dish.category == :entre }
    desserts = dishes.select { |dish| dish.category == :dessert }

    big_menu = {"apps", "entres", "dessert"}

    big_menu["apps"] = apps.sort
    big_menu["entres"] = entres.sort
    big_menu["desserts"] = desserts.sort

    binding.pry

    big_menu
  end
end