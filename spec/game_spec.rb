require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:valentina) { double Player.new("Valentina") }
  let(:rebecca) { double Player.new("Rebecca") }

  describe '#attack' do
    it 'damages the player' do
     expect(valentina).to receive(:reduce_points)
     game.attack(valentina)
    end
  end
end