require_relative '../app.rb'

describe Battlefield do
    let(:battlefield) { Battlefield.new }
    
    it 'starts with an empty 10 x 10 grid in an array of arrays' do
        expect(battlefield.grid.flatten.length).to eq 100
    end
end