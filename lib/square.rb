class Square
    attr_reader :occupied, :fired_at
    
    def initialize
        @occupied = false
        @fired_at = false
    end
end