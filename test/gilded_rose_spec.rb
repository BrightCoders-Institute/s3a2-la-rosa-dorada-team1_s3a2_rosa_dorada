# frozen_string_literal: true

require File.join(File.dirname(__FILE__), '../src/gilded_rose')

describe GildedRose do
  describe '#update_quality' do
    it 'does not change the name' do
      items = [Item.new('foo', 0, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].name).to eq 'foo'
      expect(items[0].sell_in).to eq(-1)
      expect(items[0].quality).to eq 0
    end
  end
end
