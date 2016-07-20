require 'player'

describe Player do

  subject(:barry) {described_class.new("Barry")}
  subject(:susan) {described_class.new("Susan")}


  describe '#name' do
    it 'returns the player name' do
      expect(barry.name).to eq "Barry"
    end
  end

  describe '#hitpoints' do
    it 'is set by default to 60' do
      expect(susan.hitpoints).to eq 60
    end
  end

  describe '#receive_damage' do
    it 'reduces player two\'s hitpoints by 10' do
      barry.receive_damage
      expect(barry.hitpoints).to eq 50
    end
  end

end
