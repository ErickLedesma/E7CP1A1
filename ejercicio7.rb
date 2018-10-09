# Se tiene un hash con el inventario de un negocio de computadores.
#     inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10,
#                   "Impresoras": 6}
# Se pide
# Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según
# eso el programa realizará distintas funciones.
# Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y
# agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una
# coma.
# Ejemplo del input: "Pendrives, 100"
# Si el usuario ingresa 2, podrá eliminar un item.
# Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
# Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que
# hay en el negocio.
# Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.
# Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en
# el inventario o no. Por ejemplo, el usuario ingresará "Notebooks" y el programa
# responderá "Sí".
# El programa debe repertirse hasta que el usuario ingrese 7 (salir).


inventario = {"Notebooks": 4, "PC_Escritorio": 6, "Routers": 10, "Impresoras": 6}

opcion = 0
while opcion != 7 do
    puts "Ingrese una opción
          1 - Agregar un item
          2 - Eliminar un item
          3 - Actualizar Información
          4 - Ver Stock
          5 - Ver item con mayor stock
          6 - Verificar un Item
          7 - Salir"
    opcion = gets.chomp.to_i
    case opcion
        when 1 
            puts 'Ingrese un Item y valor, separado por coma'
            ingreso = gets.chomp.gsub(' ', '_')
            arry1 = []
            arry1 = ingreso.scan(/\w+/)
            arry1[0] = arry1[0].to_sym
            arry2 = []
            arry2.push arry1
            inventario = inventario.merge(arry2.to_h)
            print  inventario
            puts ''
        when 2 
            puts 'Ingrese Item a Eliminar'
            ingreso = gets.chomp.gsub(' ', '_').to_sym
            inventario.delete(ingreso)
            puts inventario
        when 3 
            puts 'Ingresa el Item a Actualizar y su Stock'
            ingreso = gets.chomp.gsub(' ', '_')
            arry1 = []
            arry1 = ingreso.scan(/\w+/)
            arry1[0] = arry1[0].to_sym
            arry2 = []
            arry2.push arry1
            
        when 4 
            puts '4'
        when 5 
            puts '5'
        when 6 
            puts '6'
    end 
end    





