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

 describe 'reduce_points' do
   it 'reduces a player\'s hitpoints by 10' do
   expect {subject.reduce_points}.to change {subject.hitpoints}.by -10
 end
 end

end
