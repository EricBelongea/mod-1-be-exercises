class Centaur
    attr_reader :name, :breed, :shoot, :run, :cranky, :standing

    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @stamina = 0
    end

    def cranky?
        if @stamina>= 3
            @cranky = true
        else
            @cranky = false
        end
    end

    def lay_down
        @standing = false
    end

    def standing?
        @standing
    end

    def run 
        @stamina += 1
        if @standing == false
            "NO!"
        else   
            "Clop clop clop clop!"
        end
    end

    def shoot
        @stamina += 1
        if @stamina >= 3
            "NO!"
        elsif @standing == false
            "NO!"
        else
            "Twang!!!"
        end
    end

    def sleep
        if @standing == true
            "NO!"
        else
            @stamina = 0
        end
        
    end

    def laying?
        !@standing
    end

    def stand_up
        @standing = true
    end

    def potion 
        if @standing == true and @stamina >= 1
            @stamina = 0 #This is rested.
        elsif @standing == false
            "Gotta sit up to drink"
        else @stamina == 0 
            "I'm feeling woozy, too much potion"
        end
    end
end
