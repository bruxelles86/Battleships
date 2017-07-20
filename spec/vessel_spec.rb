require_relative '../app.rb'

describe Vessel do
    it 'Instantiates battleships with a correct length' do
        battleship = Vessel.new(:battleship)
        expect(battleship.type).to eq :battleship
    end
end