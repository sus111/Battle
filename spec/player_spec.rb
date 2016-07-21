require 'player'

describe Player do
  let(:name){"Thady"}
  subject {described_class.new(name)}

  describe 'name' do
    it "returns player's name" do
      expect(subject.name).to eq "Thady"
    end
  end

  describe 'hitpoints' do
    it 'sets a player\'s hitpoints to 60 by default' do
    expect(subject.hitpoints).to eq 60
    end
  end

  describe 'dead' do
    it 'set is false by default' do
      expect(subject.dead).to eq false
    end
  end

 describe 'reduce_points' do
   it 'reduces a player\'s hitpoints by 10' do
   expect {subject.reduce_points}.to change {subject.hitpoints}.by -10
 end
 end

 describe 'kill_player' do
   it 'returns true if a players HPs are 0' do
     expect {subject.kill_player}.to change {subject.dead}.to eq true
   end
 end

end
