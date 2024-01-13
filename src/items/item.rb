# frozen_string_literal: true

# Clase Item
class Item
  attr_accessor :name, :sell_in, :quality

  # Crea el objeto Item con su nombre, dias que falta para su venta y su calidad
  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  # transforma los valores a string
  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end
