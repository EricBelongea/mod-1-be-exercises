# class Medusa
#     attr_reader :name, :statues

#     def initialize(name)
#         @name = name
#         @statues = []
#     end

#     def stare(victim)
#         @statues << victim
#         victim.stoned_by = self
#         if @statues.length > 3
#             removed_victim = @statues.shift
#             removed_victim.stoned_by = nil
#         end
#     end
# end

# class Person
#     attr_reader :name
#     attr_accessor :stoned_by
#     def initialize(name)
#         @name = name
#         @stoned_by = nil
#     end

#     def stoned?
#         !@stoned_by.nil?
#     end
# end

# Above my first go
# Below help from Kevin. 


class Medusa
    attr_reader :name, :statues

    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(victim)
        victim.turn_to_stone
        @statues << victim
        if @statues.count > 3
            first_victim = @statues.shift
            first_victim.unstone
        end
    end
end

class Person
    attr_accessor :name, :stoned
    def initialize(name)
        @name = name
        @stoned = false
    end
    def turn_to_stone
        @stoned = true
    end
    def unstone
        @stoned = false
    end
end


# Code that didn't work

   # if @statues.count > 3
        #     removed_victim = @statues.shift
        #     removed_victim = victim.turn_to_stone = false
        # else 
        #     @statues << victim
        # end