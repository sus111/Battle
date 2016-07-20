require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player}
  let(:player_2) { double :player}

  describe 'player_1' do
    it 'receives player 1' do
    expect(game.player_1).to eq player_1
    end
  end

  describe 'player_2' do
    it 'receives player 2' do
    expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#player_1_turn' do
    it 'game starts as player 1s turn' do
      expect(game.player_1_turn).to eq true
    end
    #it '' do
    #  expect(game.turn).to eq 1
    #end
  end

  describe '#change_turn' do
    it 'changes the value of turn from player 1 to player 2' do
      expect{ game.change_turn }.to change{ game.player_1_turn }.from(true).to(false)
    end

    it 'changes the value of turn from player 2 back to player 1' do
      game.change_turn
      expect{ game.change_turn }.to change{ game.player_1_turn }.from(false).to(true)
    end
  end



end
