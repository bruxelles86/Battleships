require 'player'

describe Player do
    before(:each) do
        allow(vesselclass).to receive(:new).and_return(vessel)
    end
    
    let(:vesselclass) { double "vessel class" }
    let(:vessel) { double "vessel" }
    let(:battlefield) { double "battlefield" } 
    
    it 'starts the game by instantiating ten vessels' do
        player = Player.new(vesselclass, battlefield)
        expect(player.vessel_class).to have_received(:new).exactly(10).times
    end
    
    it 'is not ready to play until all vessels have been placed' do
        allow(vessel).to receive(:placed).and_return(false)
        player = Player.new(vesselclass, battlefield)
        expect(player.ready?).to eq false
    end
    
    it 'is ready when all vessels are placed' do
        allow(vessel).to receive(:placed).and_return(true)
        player = Player.new(vesselclass, battlefield)
        expect(player.ready?).to eq true
    end
end