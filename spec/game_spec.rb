#require 'game'

describe Game do
  let(:player_1) { double :player}
  let(:player_2) { double :player}
  subject { described_class.new(player_1, player_2) }

  describe '#initialize' do
    it 'initializes when instantiated' do
      expect(subject.player_1).to eq player_1
    end

    it 'sets turn to player 1 by default' do
      expect(subject.player_1_turn).to eq true
    end

  end

  describe '#attack' do
    it "damages another player" do
      expect(player_2).to receive :reduce_points
      subject.attack
    end
  end

  describe '#switch_turns' do
    it 'switches turn from player 1 to player 2' do
    expect{subject.switch_turns}.to change {subject.player_1_turn}.to eq false
  end
  end



end
