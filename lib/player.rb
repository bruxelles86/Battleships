class Player
    attr_reader :vessel_class

    def initialize(vessel_class)
        @vessel_class = vessel_class
        @vessels = new_fleet(@vessel_class)
    end
    
    def new_fleet(vessel_class)
        [ vessel_class.new(:battleship),
          vessel_class.new(:cruiser),
          vessel_class.new(:cruiser),
          vessel_class.new(:destroyer),
          vessel_class.new(:destroyer),
          vessel_class.new(:destroyer),
          vessel_class.new(:submarine),
          vessel_class.new(:submarine),
          vessel_class.new(:submarine),
          vessel_class.new(:submarine)
        ]
    end
end