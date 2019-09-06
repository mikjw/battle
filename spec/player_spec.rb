require 'player'

describe Player do
  subject(:player_1) { described_class.new('player_1')}
  
  let(:player_2) { described_class.new('player_2') }
  let(:game) { Game.new(player_1, player_2) }

  describe '#name' do
    it 'returns its name' do
      expect(subject.name).to eq('player_1')
    end
  end 

  describe '#hp' do
    it 'returns its hp' do
      expect(subject.hp).to eq described_class::DEFAULT_HP
    end
  end 

  describe '#reduce_hp' do
    it 'receives damage' do
      expect { game.inflict_damage }.to change { player_2.hp }.by(-10)
    end
  end
end
