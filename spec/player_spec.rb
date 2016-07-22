require 'player'

describe Player do
  let(:name){"Thady"}
  subject(:player) {described_class.new(name)}
  subject(:dead_player) {described_class.new(name, 0)}

  describe 'name' do
    it "returns player's name" do
      expect(subject.name).to eq "Thady"
    end
  end

  describe 'hitpoints' do
    it 'sets a player\'s hitpoints to 60 by default' do
    expect(player.hitpoints).to eq 60
    end
  end

 describe 'reduce_points' do
   it 'reduces a player\'s hitpoints by 10' do
   expect {subject.reduce_points}.to change {subject.hitpoints}.by -10
 end
 end

 describe '#player_dead' do
   it 'returns true if a player is dead' do
   expect(dead_player.player_dead?).to eq true
   end
 end

end
