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
    
    def straight_line?(coord1, coord2)
        return true if coord1[0] == coord2[0]
        return true if coord1[1] == coord2[1]
        return false
    end
    
    def within_grid?(coord1, coord2, grid)
        num1 = coord1.to_s.slice(1..-1).to_i
        num2 = coord2.to_s.slice(1..-1).to_i
        lines_exist = true if grid[(coord1[0].to_s)] && grid[(coord2[0].to_s)]
        nums_above_1 = true if num1 >= 1 && num2 >= 1
        squares_exist = true if nums_above_1 && grid[(coord1[0].to_s)][num1-1] && grid[(coord2[0].to_s)][num2-1]
        return true if lines_exist && squares_exist
        return false
    end
end