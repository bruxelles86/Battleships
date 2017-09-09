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
   
   def count_occupied
      tally = 0
      battlefield.grid.each do |key, line|
            line.each_with_index do |square, index|
                 tally += 1 if square.occupied == true
            end
      end
      return tally
   end
end

class FakeSquare
    attr_accessor :occupied
    
    def initialize
        @occupied = false
    end
end