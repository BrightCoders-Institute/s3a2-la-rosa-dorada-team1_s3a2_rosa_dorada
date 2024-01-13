# frozen_string_literal: true

require_relative '../item'
require_relative 'base_item'

# Clase para establecer que la calidad de los items tipo
# Sulfuras no cambia
class Sulfuras < BaseItem
  # Update_quality no regresa nada porque sulfuras es un objeto legendario
  # Sin embargo se necesita para poder inicializar este tipo de objeto en Gilded_Rose
  def self.update_quality(_item); end
end
