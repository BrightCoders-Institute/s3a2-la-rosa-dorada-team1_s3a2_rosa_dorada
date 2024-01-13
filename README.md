![BrightCoders Logo](img/logo.png)

# 🥷 Reto de Programación

## Implementación de la Rosa Dorada

> [Ver instrucciones antes de iniciar](./instructions.md)

## Tabla de Contenido
- [🥷 Reto de Programación](#-reto-de-programación)
  - [Implementación de la Rosa Dorada](#implementación-de-la-rosa-dorada)
  - [Tabla de Contenido](#tabla-de-contenido)
  - [Descripción](#descripción)
  - [Instalación y Ejecución](#instalación-y-ejecución)
  - [Cómo Utilizar](#cómo-utilizar)
  - [Pruebas](#pruebas)
  - [Créditos](#créditos)
  - [Insignias](#insignias)

## Descripción
El reto se basa en un sistema de inventario ficticio de una tienda llamada Gilded Rose (Rosa Dorada), donde cada artículo en el inventario tiene una calidad y una fecha de vencimiento. El objetivo del desafío es refactorizar y mejorar el código existente que actualiza la calidad de los artículos a medida que pasa el tiempo.

La tarea es agregar una nueva característica al sistema para que podamos comenzar a vender una nueva categoría de items.

## Instalación y Ejecución
Para instalar y ejecutar este proyecto, sigue estos pasos:
1. Clona el repositorio:
   ```
   git clone https://github.com/BrightCoders-Institute/s3a2-la-rosa-dorada-team1_s3a2_rosa_dorada.git
   ```
2. Navega al directorio del proyecto:
   ```
   cd s3a2-la-rosa-dorada-team1_s3a2_rosa_dorada
   ```
3. Ejecuta:
   ```
   ruby src/texttest_fixture.rb
   ```

## Cómo Utilizar
Agregue un nuevo item a la lista de items del archivo `texttest_fixture.rb`.
1. Ejemplo:
```
Item.new('Backstage passes to a TAFKAL80ETC concert', 7, 12),
```

## Pruebas

Este proyecto utiliza Rspec y Minites para pruebas unitarias. Sigue estos pasos para ejecutar las pruebas:

1. Asegúrate de tener MiniTest instalado. Si no está instalado, puedes agregarlo a tu `Gemfile` y luego ejecutar `bundle install`:

   ```ruby
   gem 'minitest'
   ```

2. Las pruebas están ubicadas en el directorio `test`. Para ejecutar todas las pruebas, utiliza el siguiente comando en la raíz del proyecto:

   ```sh
   ruby test/*_test.rb
   ```

   Esto ejecutará todos los archivos de prueba en el directorio `test` que terminan con `_test.rb`.

3. Para ejecutar un archivo de prueba específico, simplemente especifica el archivo en el comando. Por ejemplo:

   ```sh
   ruby test/gilded_rose_tests.rb
   ```

   Esto ejecutará las pruebas definidas en `gilded_rose_tests.rb`.

## Créditos
Este proyecto fue desarrollado por el Equipo 1 de BrightCoders Institute.

## Insignias
![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white)
[![RuboCop Style](https://img.shields.io/badge/code_style-RuboCop-brightgreen.svg)](https://github.com/rubocop/rubocop)
[![Minitest](https://img.shields.io/badge/test-Minitest-blue.svg)](https://github.com/seattlerb/minitest)
![RSpec](https://img.shields.io/badge/test-RSpec-lightcyan.svg)
[![Reek](https://img.shields.io/badge/code_smell-Reek-yellowgreen.svg)](https://github.com/troessner/reek)
[![RubyCritic](https://img.shields.io/badge/code_quality-RubyCritic-orange.svg)](https://github.com/whitesmith/rubycritic)
