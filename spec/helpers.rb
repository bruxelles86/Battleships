module Helpers
   def empty_grid
       alphabet = 'A'.upto('Z').to_a
       grid = {}
       for i in (1..10) do
             line = []
             10.times { line.push(FakeSquare.new) }
             key = alphabet[i-1]
             grid[key] = line
       end 
       return grid
   end
   
   def complete_grid1
      grid = empty_grid
      grid["A"][2].occupied = true
      grid["A"][3].occupied = true
      grid["A"][4].occupied = true
      return grid
   end
   
   def complete_grid2
      grid = empty_grid
      grid["C"][5].occupied = true
      grid["D"][5].occupied = true
      grid["E"][5].occupied = true
      return grid
   end
end

class FakeSquare
    attr_accessor :occupied
    
    def initialize
        @occupied = false
    end
end