require 'player'

describe Player do
  subject(:player) { described_class.new ("Steve")}
  describe "#name" do
    it 'returns player name' do
      expect(player.name).to eq("Steve")     
    end
  end

end