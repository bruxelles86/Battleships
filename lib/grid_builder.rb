class GridBuilder
    def initialize
        @alphabet = 'A'.upto('Z').to_a
        @empty_square = {}
    end
    
    def new_grid(x=10, y=10)
        grid = {}
        for i in (1..y) do
            line = []
            x.times { line.push(@empty_square) }
            key = @alphabet[i-1]
            grid[key] = line
        end
        return grid
    end
end