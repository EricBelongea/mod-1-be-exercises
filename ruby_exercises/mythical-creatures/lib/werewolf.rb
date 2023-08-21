class Werewolf
    attr_reader :name, :location, :hungry, :consumed

    def initialize(name, location = "London")
        @name = name
        @location = location
        @human = true
        @wolf = false
        @hungry = false
        @consumed = false
    end

    def change!
        @human = !@human
        @wolf = !@wolf
        @hungry = !@hungry
    end

    def human?
        @human
    end

    def wolf?
        @wolf
    end
    
    def consume!(victim)
        if @wolf == true
            @consumed = !@consumed
            @hungry = false
            victim = victim.eaten
        end
    end
end


class Victim
    attr_accessor :status, :eaten

    def initialize
      @status = :alive
    end

    def eaten
        @status = :dead
    end
  end

