require 'player'

describe Player do

  subject {described_class.new(:player_name)}

  describe '#name' do
    it 'returns the player name' do
      expect(subject.name).to eq :player_name
    end
  end

  describe '#hitpoints' do
    it 'is set by defualt to 60' do
      expect(subject.hitpoints).to eq 60
    end
  end

  describe '#reduce_hitpoints' do
    it 'reduces player two\'s hitpoints by 10' do
      subject.reduce_hitpoints
      expect(subject.hitpoints).to eq 50
    end
  end

end
