class Direwolf
    attr_reader :name, :home, :size, :starks_to_protect

    def initialize(name, home = "Beyond the Wall", size = "Massive")
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
    end

    def protects(stark)
        if stark.location == home && @starks_to_protect.count < 2
            @starks_to_protect << stark
            stark.safe = true
        end
    end

    def leaves(stark)
        @starks_to_protect.delete(stark)
        stark.safe = false
        stark
    end

    def hunts_white_walkers?
        if @starks_to_protect.count > 0
            false
        else
            true
        end
    end
end


class Stark
    attr_accessor :location, :name, :house_words, :safe

    def initialize(name, location = "Winterfell")
        @name = name
        @location = location
        @safe = false
        @house_words = "Winter is Coming"
    end

    def safe?
        @safe
    end
end