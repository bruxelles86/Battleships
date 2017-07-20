require_relative '../app.rb'

describe Vessel do
    it 'Instantiates battleships with a correct length' do
        battleship = Vessel.new(:battleship)
        expect(battleship.type).to eq :battleship
        expect(battleship.length).to eq 4
    end
    
    it 'Gives cruisers, destroyers and submarines the correct length' do
        cruiser = Vessel.new(:cruiser)
        destroyer = Vessel.new(:destroyer)
        submarine = Vessel.new(:submarine)
        expect(cruiser.length).to eq 3
        expect(destroyer.length).to eq 2
        expect(submarine.length).to eq 1
    end
end