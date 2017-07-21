class Battlefield
    attr_reader :grid
    
    def initialize
        @grid = empty_grid(10,10)    
    end
    
    private
    
    def empty_grid(x,y)
        one_line, complete_grid = [], []
        x.times { one_line.push(nil) }
        y.times { complete_grid.push(one_line) }
        return complete_grid
    end
end