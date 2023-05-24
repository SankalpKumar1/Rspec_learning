class Animal
    begin  
        this is the comment that i have added
    end 
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
    # this is the comment for the second commit
    def feed
        @hunger_level = 0
    end
    # another comment made on the remote
    def bark
        return "woof!"
    end
end
