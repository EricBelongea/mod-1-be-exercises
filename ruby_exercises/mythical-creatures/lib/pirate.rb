class Pirate
    attr_reader :name, :job, :booty

    def initialize(name, job = "Scallywag")
        @name = name
        @job = job
        @morals = 0
        @booty = 0
    end

    def commit_heinous_act
        @morals += 1
    end

    def cursed?
        if @morals >= 3
            true
        else
            false
        end
    end

    def rob_ship
        @booty += 100
    end
end

