class Dock
  attr_reader :name, :max_rental_time, :rental_log

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
  end

  def rent(boat, person)
    @rental_log[boat] = person
  end

  def charge(rented_boat)
    charge = { card_number: "", amount: 0 }
    
    @rental_log.find do |item|
      charge[:card_number] = item[1].credit_card_number
      charge[:amount] += item[0].hours_rented * item[0].price_per_hour
    end
    charge
  end
end