require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe '#initialize' do
    it 'accepts two Player instances' do
      expect(game.players).to eq([player_1, player_2])
    end 
  end
  
  describe '#attack' do
    it 'attacks the player' do
      expect(player_1).to receive(:reduce_hp)
      game.inflict_damage(player_1)
    end
  end
end
