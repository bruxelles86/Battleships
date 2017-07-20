require_relative '../app.rb'

describe Game do
    let(:game) { Game.new }

    it 'initializes with a playing state of false' do
        expect(game.playing).to eq false
    end
end