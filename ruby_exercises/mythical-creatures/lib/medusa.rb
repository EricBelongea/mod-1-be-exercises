class Medusa
    attr_reader :name, :statues

    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(victim)
        @statues << victim
        victim.stoned_by = self
        if @statues.length > 3
            @statues.shift
        end
    end
end

class Person
    attr_reader :name
    attr_accessor :stoned_by
    def initialize(name)
        @name = name
        @stoned_by = nil
    end

    def stoned?
        !@stoned_by.nil?
    end
end

