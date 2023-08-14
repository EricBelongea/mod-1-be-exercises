class Dragon
    attr_reader :name, :rider, :color, :hungry

    def initialize(name, color = :gold, rider)
        @name = name
        @rider = rider
        @color = color
        @hungry = true
        @counter = 0
    end

    def eat
      @counter += 1
    end

    def hungry?
        if @counter >= 3
            @hungry = false
        else
            @hungry = true
        end
    end



end
