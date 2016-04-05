require './gilded_rose'

describe GildedRose do

  describe '#update_quality' do
    context 'when no extra conditions are met' do

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

    context 'when sell_in is 0' do
      it 'should not reduce the quality at twice the rate' do
        items = [Item.new("item1", 0, 10)]
        GildedRose.new(items).update_quality
        expect(items[0].quality).to eq 8
      end
    end

    context 'when quality is 0' do
      it 'should not reduce the sell_in to a negative number' do
        items = [Item.new("item1", 10, 0)]
        GildedRose.new(items).update_quality
        expect(items[0].quality).to eq 0
      end
    end

    context 'when the item is Aged Brie' do
      it 'actually increases the quality' do
        items = [Item.new("Aged Brie", 10, 10)]
        GildedRose.new(items).update_quality
        expect(items[0].quality).to eq 11
      end

      it 'should not increase the quality more than 50' do
        items = [Item.new("Aged Brie", 0, 50)]
        GildedRose.new(items).update_quality
        expect(items[0].quality).to eq 50
      end
    end
  end
end
