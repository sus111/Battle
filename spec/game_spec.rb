
require 'game'

describe Game do
  let(:player_1) { double :player}
  let(:player_2) { double :player}
  subject { described_class.new(player_1, player_2) }

  describe '#initialize' do
    it 'initializes when instantiated' do
      expect(subject.player_1).to eq player_1
    end
  end


  describe '#attack' do
    it "damages another player" do
      expect(player_2).to receive :reduce_points
      subject.attack(player_2)
    end
  end



end
