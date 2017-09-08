require 'grid_builder'

describe GridBuilder do
    before(:each) do
        allow(square_class).to receive(:new).and_return(square)
    end
    
    let(:square_class) { double "square_class" }
    let(:square) { double "square" }
        
    it 'generates a 10 x 10 grid' do
        grid_builder = GridBuilder.new(square_class)
        grid = grid_builder.new_grid
        expect(grid.values.flatten.length).to eq 100
    end
    
    it 'generates a 12 x 12 grid if new_grid is passed 12 and 12 as arguments' do
        grid_builder = GridBuilder.new(square_class)
        grid = grid_builder.new_grid(12, 12)
        expect(grid.values.flatten.length).to eq 144
    end
end