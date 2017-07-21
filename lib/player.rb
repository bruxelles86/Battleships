class Player
    attr_reader :vessel_class

    def initialize(vessel_class)
        @vessel_class = vessel_class
        @vessels = new_fleet(@vessel_class)
    end
    
    def new_fleet(vessel_class)
        vessels = [ vessel_class.new(:battleship) ]
        2.times { vessels.push(vessel_class.new(:cruiser)) }
        3.times { vessels.push(vessel_class.new(:destroyer)) }
        4.times { vessels.push(vessel_class.new(:submarine)) } 
        return vessels
    end
end