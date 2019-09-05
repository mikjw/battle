require 'game'


describe Game do
  subject(:game) { described_class.new('karlo', 'mike')}

  describe '#initialize' do
    it 'creates two new players' do
      expect(game.players).to eq ({ 'Player1' => 'karlo', 'Player2' => 'mike' })
    end
  end
end
