# frozen_string_literal: true

# Clase BaseItem para definir un objeto principal
class BaseItem
  # Actualiza la calidad del item
  def self.update_quality(item)
    item.sell_in -= 1
    decrease_quality(item)
    decrease_quality(item) if item.sell_in.negative?
    cap_quality(item)
  end

  # Decrementa la calidad en uno si esta no es cero.
  def self.decrease_quality(item, amount = 1)
    item.quality -= amount if item.quality.positive?
  end

  # Establece limite de calidad a 50.
  def self.cap_quality(item)
    item.quality = 50 if item.quality > 50
  end
end
