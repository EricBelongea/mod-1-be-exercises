class Activity
  attr_reader :name, :participants, :total_cost

  def initialize(name)
    @name = name
    @participants = {}
    @total_cost = 0
  end

  def add_participant(name, cost)
    @participants[name] = cost
    @total_cost += cost
  end

  def split
    @total_cost/@participants.count
  end

  def owed
    difference = {}

    @participants.each do |practicipant|
      difference[practicipant[0]] = -(practicipant[1] - 30)
    end
    difference
  end
end