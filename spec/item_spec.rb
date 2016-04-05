require './item'

describe Item do
  subject(:item) { described_class.new("item1", 20, 10) }

  it 'has a name attribute' do
    expect(item.name).to eq "item1"
  end

  describe '#to_s' do
    it { is_expected.to respond_to :to_s }
  end
end
