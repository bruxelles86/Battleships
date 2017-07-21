class Battlefield
    attr_reader :grid
    
    def initialize(grid_builder_class)
        @grid_builder = grid_builder_class.new
        @grid = @grid_builder.new_grid
    end
    
end