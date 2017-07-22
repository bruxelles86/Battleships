require_relative '../app.rb'

describe GridBuilder do
    it 'generates a 10 x 10 grid' do
        grid_builder = GridBuilder.new
        grid = grid_builder.new_grid
        expect(grid.values.flatten.length).to eq 100
    end
end