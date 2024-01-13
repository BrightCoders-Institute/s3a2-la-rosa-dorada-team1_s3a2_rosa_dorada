# frozen_string_literal: true

require_relative '../item'
require_relative 'base_item'

# Clase para el item Aged Bried
class AgedBried < BaseItem
  # Actualiza la calidad de los items que pertenecen a ese tipo
  def self.update_quality(item)
    item.sell_in -= 1
    increase_quality(item)
    increase_quality(item) if item.sell_in.negative?
    cap_quality(item)
  end

  # Incrementa la calidad en uno si es menor a 50
  def self.increase_quality(item)
    item.quality += 1 if item.quality < 50
  end
end
