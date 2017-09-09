class Battlefield
    attr_reader :grid
    
    def initialize(grid_builder_class)
        @grid_builder = grid_builder_class.new
        @grid = @grid_builder.new_grid
    end
    
    def place(vessel, coord1, coord2)
        
        #  checks coordinates are straight vertically/horizontally, fit inside grid, match vessel length, and are vacant 
        #  if all criteria are met, sets right grid squares 'occupied' fields to true

    end
end