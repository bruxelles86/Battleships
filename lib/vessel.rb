class Vessel
    attr_reader :type, :length
    
    def initialize(vessel_type)
        @type = vessel_type
        @vessel_lengths = { battleship: 4, cruiser: 3, destroyer: 2, submarine: 1 }
        @length = @vessel_lengths[vessel_type]
        @placed = false
    end
end