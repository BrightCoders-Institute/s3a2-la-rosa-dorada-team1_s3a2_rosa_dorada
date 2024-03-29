# frozen_string_literal: true

# !/usr/bin/ruby -w

require File.join(File.dirname(__FILE__), 'gilded_rose')
require File.join(File.dirname(__FILE__), 'items/item.rb')

puts 'OMGHAI!'
items = [
  Item.new('+5 Dexterity Vest', 10, 20),
  Item.new('Aged Brie', 2, 0),
  Item.new('Elixir of the Mongoose', 5, 7),
  Item.new('Sulfuras, Hand of Ragnaros', 0, 80),
  Item.new('Sulfuras, Hand of Ragnaros', -1, 80),
  Item.new('Backstage passes to a TAFKAL80ETC concert', 15, 20),
  Item.new('Backstage passes to a TAFKAL80ETC concert', 10, 20),
  Item.new('Backstage passes to a TAFKAL80ETC concert', 1, 20),
  # This Conjured item does not work properly yet
  Item.new('Conjured Mana Cake', 3, 6),
  Item.new('Conjured Necklace', 3, 5),
  Item.new('Conjured Water', 10, 50)
]

days = 2
days = ARGV[0].to_i + 1 if ARGV.size.positive?

gilded_rose = GildedRose.new items
(0...days).each do |day|
  puts "-------- day #{day} --------"
  puts 'ellIn, quality'
  items.each do |item|
    puts item
  end
  puts ''
  gilded_rose.update_quality
end
