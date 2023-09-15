class Attendee
  attr_reader :id, :name, :zipcode

  def initialize(id, first_name, last_name, zipcode)
    @id = id
    @name = "#{first_name} #{last_name}"
    @zipcode = %.5i.zipcode
  end
end