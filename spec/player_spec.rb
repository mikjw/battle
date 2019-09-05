require 'player'

describe Player do
  let(:name) { double :name }
  subject(:player) { described_class.new(name)}

  it 'returns its name' do
    expect(subject.name).to eq(name)
  end
end
