class Animal
    def initialize(hunger_level)
        @hunger_level = hunger_level
    end
    attr_reader :hunger_level
    def is_hungry?
        if @hunger_level <= 5 
            return false
        else
            return true
        end
    end
    def feed
        @hunger_level = 0
    end
    def bark
        return "woof!"
    end
end