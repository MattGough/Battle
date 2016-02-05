require 'player'

describe Player do
  subject(:rebecca) { Player.new('Rebecca') }
  subject(:valentina) { Player.new('Valentina') }

  describe '#name' do
   it 'returns player name' do
    expect(rebecca.name).to eq 'Rebecca'
   end
  end

  describe '#hit_points' do
    it 'returns hit_points' do
     expect(rebecca.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
     expect(valentina).to receive(:reduce_points)
     rebecca.attack(valentina)
    end
  end

  describe '#reduce_points' do
    it 'reduces the player hit points' do
     expect{valentina.reduce_points}.to change {valentina.hit_points}.by(-10)
    end
  end
end
