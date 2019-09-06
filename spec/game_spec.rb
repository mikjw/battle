require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe '#initialize' do
    it 'accepts a first Player instance' do
      expect(game.p1).to eq(player_1)
    end 

    it 'accepts second Player instance' do
      expect(game.p2).to eq(player_2)
    end 
  end
  
  describe '#attack' do
    it 'attacks the player' do
      expect(game.p2).to receive(:reduce_hp)
      game.inflict_damage
    end
  end
end
