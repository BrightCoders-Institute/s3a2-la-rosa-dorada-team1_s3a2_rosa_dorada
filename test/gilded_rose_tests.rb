# frozen_string_literal: true

require File.join(File.dirname(__FILE__), '../src/gilded_rose')
require 'test/unit'

# Inicializando prueba
class TestUntitled < Test::Unit::TestCase
  def test_foo
    items = [Item.new('foo', 0, 0)]
    GildedRose.new(items).update_quality
    assert_equal items[0].name, 'foo'
    assert_equal items[0].sell_in, -1
    assert_equal items[0].quality, 0
  end
end
