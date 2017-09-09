class Square
    attr_accessor :occupied, :fired_at
    
    def initialize
        @occupied = false
        @fired_at = false
    end
end