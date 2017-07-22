require 'square'

describe Square do
    let(:square) { Square.new }
    
    it 'begins empty, never having been fired at' do
        expect(square.occupied).to eq false
        expect(square.fired_at).to eq false
    end
end