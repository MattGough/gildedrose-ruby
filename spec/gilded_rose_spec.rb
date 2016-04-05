require './gilded_rose'

describe GildedRose do
  describe '#update_quality' do

    it 'should reduce the quality by 1' do
      items = [Item.new("item1", 20, 10)]
      GildedRose.new(items).update_quality
      expect(items[0].quality).to eq 9
    end

    it 'should reduce the sell_in by 1' do
      items = [Item.new("item1", 10, 10)]
      GildedRose.new(items).update_quality
      expect(items[0].sell_in).to eq 9
    end
  end
end
