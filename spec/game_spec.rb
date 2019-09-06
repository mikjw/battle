require 'game'

describe Game do

  subject { described_class.new }
  let(:player) { double :player }

  describe '#attack' do
    it 'attacks the player' do
      expect(player).to receive(:reduce_hp)
      subject.inflict_damage(player)
    end
  end
end
