require_relative '../app.rb'

describe Grid do
    let(:grid) { Grid.new }
    
    it 'starts with an empty 10 x 10 grid in an array of arrays' do
        expect(grid.squares.flatten.length).to eq 100
    end
end