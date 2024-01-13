# frozen_string_literal: true

require_relative '../item'
require_relative 'base_item'

# Clase para los items que pertenezcan al tipo BackstagePass
class BackstagePass < BaseItem
  # Actualiza la calidad y los dias restantes de venta,
  # la calidad del objeto aumenta dependiendo de los días de venta restantes
  def self.update_quality(item)
    item.sell_in -= 1

    # El valor de esta variable cambia dependiendo a los días restantes
    quality_increase =
      if item.sell_in > 10 then 1
      elsif item.sell_in > 5 then 2
      elsif item.sell_in.positive? then 3
      else
        0
      end

    # Incrementa la calidad del item dependiendo de la variable
    # quality_increase si es menor a 50
    item.quality = (quality_increase.positive? ? [[item.quality + quality_increase, 0].max, 50].min : 0)
    item
  end
end
