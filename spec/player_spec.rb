describe Player do
subject(:a) { described_class.new('Alex') }
subject(:b) { described_class.new('Chris') }
  it 'returns the name given' do
    expect(a.name).to eq('Alex')
  end
end
