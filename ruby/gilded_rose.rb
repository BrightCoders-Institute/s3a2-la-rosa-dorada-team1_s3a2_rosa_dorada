# frozen_string_literal: true

# Clase GildedRose, recibe el objeto.
class GildedRose
  attr_accessor :items

  def initialize(items)
    @items = items
  end

  def backstage_item(item)
    puts item.quality
    item.quality += 1 if item.sell_in > 10 && (item.quality < 50)
    item.quality += 2 if (6..10).include?(item.sell_in) && item.quality < 50
    item.quality += 3 if item.sell_in < 6 && (item.quality < 50)
  end

  def valid_dec_item(item)
    if item.name != 'Aged Brie' && item.name != 'Backstage passes to a TAFKAL80ETC concert'
      item.quality -= 1 if item.quality.positive? && (item.name != 'Sulfuras, Hand of Ragnaros')
    elsif item.quality < 50
      backstage_item(item) if item.name == 'Backstage passes to a TAFKAL80ETC concert'
    end
  end

  def first_zero_condition(item)
    if item.name != 'Aged Brie' && item.name != 'Backstage passes to a TAFKAL80ETC concert'
      item.quality -= 1 if item.quality.zero? && (item.name != 'Sulfuras, Hand of Ragnaros')
    else
      item.quality -= item.quality
    end
  end

  def item_in_zero(item)
    first_zero_condition(item) if item.sell_in.zero?
  end

  def update_quality
    @items.each do |item|
      valid_dec_item(item)
      item.sell_in -= 1 if item.name != 'Sulfuras, Hand of Ragnaros'
      item_in_zero(item)
    end
  end
end

# Clase Item
class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end
