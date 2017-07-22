class GridBuilder
    def initialize(square_class)
        @alphabet = 'A'.upto('Z').to_a
        @square_class = square_class
    end
    
    def new_grid(x=10, y=10)
        grid = {}
        for i in (1..y) do
            line = []
            x.times { line.push(@square_class.new) }
            key = @alphabet[i-1]
            grid[key] = line
        end
        return grid
    end
end