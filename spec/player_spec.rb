require 'player'

describe Player do
    before(:each) do
        allow(vessel).to receive(:new).and_return(vessel)
    end
    
    let(:vessel) { double }
    
    it 'starts the game by instantiating ten vessels' do
        player = Player.new(vessel)
        expect(player.vessel_class).to have_received(:new).exactly(10).times
    end
end