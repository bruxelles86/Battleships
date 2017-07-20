require_relative '../app.rb'

describe Player do
    it 'starts the game with the right collection of vessels' do
        player = Player.new
        expect(player.vessels.length).to eq 10
        expect(player.vessels.count { |vessel| vessel.type == :battleship }).to eq 1
        expect(player.vessels.count { |vessel| vessel.type == :cruiser }).to eq 2
        expect(player.vessels.count { |vessel| vessel.type == :destroyer }).to eq 3
        expect(player.vessels.count { |vessel| vessel.type == :submarine }).to eq 4
    end
end