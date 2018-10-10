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

# Datos
inventario = {"Notebooks": 4, "PC_Escritorio": 6, "Routers": 10, "Impresoras": 6}
alternativas = [ "Agregar un item", "Eliminar un item", "Actualizar Información", "Ver Stock",
                 "Ver item con mayor stock", "Verificar un Item", "Salir"]

# Métodos   
def solicita_opcion(alternativas)
    opcion = 0
    while (opcion <= 0 || opcion > alternativas.count)
        ingreso = gets.chomp
        if  ingreso.to_i == 0 || (ingreso.to_i - ingreso.to_f) != 0 then 
            puts "Su opción es: #{ingreso}, debes Ingresar un entero"  
        else opcion = ingreso.to_i
        end 
        if opcion <= 0 || opcion > alternativas.count
        then puts "Opciones del 1 al #{alternativas.count}"
        end      
    end 
    puts alternativas[opcion - 1]
    return opcion 
end     

def imprime_menu(alternativas)
    menu = ''
    alternativas.each_with_index { |opcion, indice |
        menu += "\n\t #{(indice + 1)} - " + opcion
    }   
    puts "Ingrese una opción \n" + menu
end     

def ingresa_item 
    puts 'Ingrese un Item' 
    ingreso = gets.chomp.gsub(' ', '_').to_sym
end    

def ingresa_item_valor 
    puts 'Ingrese un Item y Valor, separado por coma'
    ingreso = gets.chomp.gsub(' ', '_')
    arry1 = []
    arry1 = ingreso.scan(/\w+/)
    arry1[0] = arry1[0].to_sym
    arry2 = []
    arry2.push arry1
end    

def verifica_item(item, inventario)
   if !inventario.include?(item) then puts "No Existe #{item} en Inventario" end 
end     

opcion = 0
while opcion != 7 do
    imprime_menu(alternativas)

    opcion = solicita_opcion(alternativas)
 
    case opcion
        when 1     # Agregar un Item 
            arry = ingresa_item_valor
            inventario = inventario.merge(arry.to_h)
            print  inventario
            puts ''
        when 2     # Eliminar un Item
            ingreso = ingresa_item
            verifica_item(ingreso, inventario)
            inventario.delete(ingreso)
            puts inventario
        when 3     # Actuaizar Información 
            arry = ingresa_item_valor
            arry2.push arry1     
        when 4     # Ver Stock
            puts '4'
        when 5     # Ver Item con Mayor Stock
            puts '5'
        when 6     # Verificar un Item
            puts '6'
    end

end    




