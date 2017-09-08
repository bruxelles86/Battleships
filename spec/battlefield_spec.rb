require 'battlefield'

describe Battlefield do
    before(:each) do
        allow(grid_builder_class).to receive(:new).and_return(grid_builder)
        allow(grid_builder).to receive(:new_grid).and_return(empty_grid)
        allow(vessel).to receive(:length).and_return(3)
    end
    
    let(:grid_builder_class) { double "grid_builder_class" }
    let(:battlefield) { Battlefield.new(grid_builder_class) }
    let(:grid_builder) { double "grid_builder" }
    let(:vessel) { double "vessel" }
    
    
    it 'puts vessels in the correct squares when placed horizontally' do
        battlefield.place(vessel, :A3, :A5)
        expect(battlefield.grid).to eq complete_grid1
    end
    
    it 'puts vessels in the correct squares when placed vertically' do
        battlefield.place(vessel, :C6, :E6)
        expect(battlefield.grid).to eq complete_grid2
    end
  
    it 'does not place a ship if the given coordinates don\'t match ship length' do
        battlefield.place(vessel, :C6, :F6)
        expect(battlefield.grid).to eq complete_grid1
    end
end