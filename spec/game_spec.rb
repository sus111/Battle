require 'game'

describe Game do
  subject { described_class.new }
  let(:player_2) { double :player}

  describe '#attack' do
    it "damages another player" do
      expect(player_2).to receive :reduce_points
      subject.attack(player_2)
    end
  end

end
