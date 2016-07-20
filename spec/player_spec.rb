require 'player'
describe Player do
  subject {described_class.new(:player_name)}
  describe '#name' do
    it 'returns the player name' do
      expect(subject.name).to eq :player_name
    end
  end
end
