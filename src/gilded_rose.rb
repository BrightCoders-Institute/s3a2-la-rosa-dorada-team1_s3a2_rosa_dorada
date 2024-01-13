# frozen_string_literal: true

require_relative 'items/item_types/aged_bried'
require_relative 'items/item_types/backstage_pass'
require_relative 'items/item_types/base_item'
require_relative 'items/item_types/conjured_item'
require_relative 'items/item_types/sulfuras'

# Clase GildedRose
class GildedRose
  # Inicializa la lista de items
  def initialize(items)
    @items = items
  end

  # Actualiza la calidad de cada item que se encuentre en la lista
  def update_quality
    @items.each do |item|
      update_item(item)
    end
  end

  private

  # Metodo para actualizar el item dependiendo de su tipo
  def update_item(item)
    case item.name
    when 'Aged Brie'
      AgedBried.update_quality(item)
    when 'Backstage passes to a TAFKAL80ETC concert'
      BackstagePass.update_quality(item)
    when /Conjured/
      ConjuredItem.update_quality(item)
    when 'Sulfuras, Hand of Ragnaros'
      Sulfuras.update_quality(item)
    else
      BaseItem.update_quality(item)
    end
  end
end
