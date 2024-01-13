# frozen_string_literal: true

require_relative '../item'
require_relative 'base_item'

# Clase para modificar la calidad a los item tipo Conjured
class ConjuredItem < BaseItem
  def self.update_quality(item)
    item.sell_in -= 1
    decrease_quality(item, 2)
    decrease_quality(item, 2) if item.sell_in.negative?
    cap_quality(item)
  end
end
