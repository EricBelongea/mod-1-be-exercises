class Ogre
    attr_reader :name, :home, :swings
    # attr_accessor :swings

    def initialize(name, home = "Swamp")
        @name = name
        @home = home
        @swings = 0
    end

    def encounter(human)
        human.encounter_counter += 1
        if human.encounter_counter == 3
            @swings += 1
        elsif human.encounter_counter == 6
            @swings += 1
        else
        end
    end

    def swing_at(human)
        @swings += 1
    end

    def apologize(human)
        human.encounter_counter = 0
    end
end


class Human
    attr_accessor :name, :encounter_counter

    def initialize(name = "Jane")
        @name = name
        @encounter_counter = 0
    end

    def notices_ogre?
        if @encounter_counter >= 3
            true
        else
            false
        end
    end

    def knocked_out
        if @encounter_counter == 6 
            true
        else
            false
        end
    end
end
