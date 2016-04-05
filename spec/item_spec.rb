require './item'

describe Item do
  subject(:item) { described_class.new("Item1", 20, 10) }

  it 'has a name attribute' do
    expect(item.name).to eq "Item1"
  end

  it 'has a sell_in attribute' do
    expect(item.sell_in).to eq 20
  end

  it 'has a quality attribute' do
    expect(item.quality).to eq 10
  end

  describe '#to_s' do
    it { is_expected.to respond_to :to_s }

    it 'returns a string of the attributes combined' do
      expect(item.to_s).to eq("Item1, 20, 10")
    end
  end
end
