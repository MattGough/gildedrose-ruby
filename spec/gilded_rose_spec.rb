require './gilded_rose'

describe GildedRose do
  subject(:gildedrose) { described_class.new(item) }
  let(:item) { double :item }

  describe '#update_quality' do
    it { is_expected.to respond_to :update_quality }
  end
end
