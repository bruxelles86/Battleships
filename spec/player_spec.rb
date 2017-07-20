require_relative '../app.rb'

describe Player do
    before(:each) do
        vessel = double("vessel")
        allow(vessel).to receive(:new).and_return(vessel)
    end
    
    it 'starts the game by instantiating ten vessels' do
        player = Player.new(vessel)
        expect(player.vessels).to receive(:new).exactly(10).times
    end
end