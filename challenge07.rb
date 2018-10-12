# 1 - Información del problema

inventario_inicial = {"Notebooks": 4,
              "PC Escritorio": 6,
              "Routers": 10,
              "Impresoras": 6}

opcion_escogida = 0

opciones = ['Opcion 01: agregar',
            'Opcion 02: eliminar',
            'Opcion 03: actualizar',
            'Opcion 04: stock_total',
            'Opcion 05: max_stock',
            'Opcion 06: hay_inventario',
            'Opcion 07: pina_colada',
           ]

opcion_salida = opciones.length
mensaje_bienvenida = """
  Bienvenido al software Desafia Tu Inventario!!!

  Favor ingresa una alternativa de las disponibles :)
"""

# 2 - Declarar el procesamiento

#Menu
def welcome_message(message)
  puts message
end

def mostrar_menu(opciones)
  texto_menu = opciones.join("\n")
  puts texto_menu
end

def escoger_alternativa(opciones)
  alternativa_ingresada = gets.chomp
  alternativa_transformada = alternativa_ingresada.to_i
  cantidad_opciones = opciones.length

  while !(0 < alternativa_transformada and alternativa_transformada <= cantidad_opciones)
    puts "Tu alternativa es #{alternativa_ingresada}"
    puts "Debes escoger un número entre 1 y #{cantidad_opciones}"
    alternativa_ingresada = gets.chomp
    alternativa_transformada = alternativa_ingresada.to_i
  end

  alternativa_transformada
end


#Opcion 1
def agregar(inventario)
  puts "Agregando :)"
end

#Opcion 2
def eliminar(inventario)
  puts "Chabela :)"
end

#Opcion 3
def actualizar(inventario)
end

#Opcion 4
def stock_total(inventario)
end

#Opcion 5
def max_stock(inventario)
end

#Opcion 6
def hay_inventario(inventario)
end

#Opcion 7
def cerveza(inventario)
  puts "Ejale :)"
end

# 2 - Procesar

# 1. Menu de 7 opciones
welcome_message(mensaje_bienvenida)
mostrar_menu(opciones)

while (opcion_escogida != opcion_salida) do
  opcion_escogida = escoger_alternativa(opciones)

  case opcion_escogida
  when 1
    agregar(inventario_inicial)
  when 2
    eliminar(inventario_inicial)
  when opcion_salida
    cerveza(inventario_inicial)
    break
  end
end

# Identificar que la alternativa
# y si es correcta, proceder a ejecutar la acción
# de lo contario, solicitarla nuevamente
