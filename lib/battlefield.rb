class Battlefield
    attr_reader :grid
    
    def initialize(grid_builder_class, square_class)
        @alphabet = 'A'.upto('Z').to_a
        @grid_builder = grid_builder_class.new(square_class)
        @grid = @grid_builder.new_grid
    end
    
    def place(vessel, coord1, coord2)

    end
    
    def valid_coords?(coord1, coord2, vessel, grid)
        return false if straight_line?(coord1, coord2) == false
        return false if within_grid?(coord1, coord2, grid) == false
        return false if matches_vessel_length?(vessel, coord1, coord2, grid) == false
        return false if coords_vacant?(coord1, coord2, grid) == false
        return true
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
    
    def matches_vessel_length?(vessel, coord1, coord2, grid)
        num1 = coord1.to_s.slice(1..-1).to_i
        num2 = coord2.to_s.slice(1..-1).to_i
        same_line = true if grid[(coord1[0].to_s)] == grid[(coord2[0].to_s)]
        same_column = true if num1 == num2
        if straight_line?(coord1, coord2)
            return true if same_line and vessel.length == num2 - num1 + 1
            return true if same_column and vessel.length == (@alphabet.index(coord2[0].to_s) - @alphabet.index(coord1[0].to_s) + 1)
            return false
        end
    end
    
    def coords_vacant?(coord1, coord2, grid)
        num1 = coord1.to_s.slice(1..-1).to_i
        num2 = coord2.to_s.slice(1..-1).to_i
        same_column = true if num1 == num2
        same_line = true if grid[(coord1[0].to_s)] == grid[(coord2[0].to_s)]
        if same_line
            grid[coord1[0].to_s][num1-1..num2-1].each do |square|
                return false if square.occupied == true
            end
        end
        if same_column
            lines = @alphabet[@alphabet.index(coord1[0].to_s)..@alphabet.index(coord2[0].to_s)]
            lines.each do |line|
                return false if grid[line][num1-1].occupied == true
            end
        end
        return true
    end
end