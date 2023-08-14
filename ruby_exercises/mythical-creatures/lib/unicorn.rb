class Unicorn
    attr_reader :name, :color, :say
    def initialize(name, color = "silver") 
        @name = name
        @color = color
    end

    def silver?
        if color == "silver"
            true
        else
            false
        end
    end
    
    def say(string)
        "**;* #{string} **;*"
    end
end
