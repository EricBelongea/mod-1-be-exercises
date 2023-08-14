
# class Dragon
#     attr_reader :name, :rider, :color, :hungry?, :eat

#     def initialize(name, color, rider)
#         @name = name
#         @rider = rider
#         @color = color 
#         @hungry? = true
#         @counter = 0
#     end

#     def eat
#         @counter += 1
#         if @counter >=3
#             @hungry? = false
#         end
#     end
# end

class Dragon
    attr_reader :name, :rider, :color
  
    def initialize(name, color, rider)
      @name = name
      @rider = rider
      @color = color
      @counter = 0
    end
  
    def hungry?
      @counter < 3
    end
  
    def eat
      @counter += 1
    end
  end
  





