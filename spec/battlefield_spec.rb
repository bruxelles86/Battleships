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
        battlefield.place(vessel, :A3, :E5)
        expect(battlefield.grid["A"][2].occupied).to eq true
        expect(battlefield.grid["A"][3].occupied).to eq true
        expect(battlefield.grid["A"][4].occupied).to eq true
        expect(count_occupied).to eq(3)
    end
    
    it 'puts vessels in the correct squares when placed vertically' do
        battlefield.place(vessel, :C6, :E6)
        expect(battlefield.grid["C"][5].occupied).to eq true
        expect(battlefield.grid["D"][5].occupied).to eq true
        expect(battlefield.grid["E"][5].occupied).to eq true
        expect(count_occupied).to eq(3)
    end
  
    it 'does not place a ship if the given coordinates don\'t match ship length' do
        battlefield.place(vessel, :C6, :F6)
        expect(count_occupied).to eq(0)
    end
    
    it 'does not place a ship if the given coordinates are not a vertical or horizontal line' do
        battlefield.place(vessel, :C6, :D3)
        expect(count_occupied).to eq(0)
    end
    
    it 'does not place a ship if the gives coordinates fall outside the grid' do
        battlefield.place(vessel, :E10, :E12)
        expect(count_occupied).to eq(0)
    end
end