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
def verifica_entero(texto)
    entero = true
    if  texto.to_i == 0 || (texto.to_i - texto.to_f) != 0 
    then  entero = false
    end  
    return entero
end 

def solicita_opcion(alternativas)
    opcion = 0
    while (opcion <= 0 || opcion > alternativas.count)
        ingreso = gets.chomp
        entero = verifica_entero(ingreso)
        if !entero then
            puts "Su opción es: #{ingreso}, debes Ingresar un entero"
        elsif
            opcion = ingreso.to_i
            if opcion <= 0 || opcion > alternativas.count
            then puts "Opciones del 1 al #{alternativas.count}"
            end
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
    puts "\nIngrese una opción \n" + menu
end     

def ingresa_item 
    puts 'Ingrese un Item' 
    ingreso = gets.chomp.gsub(' ', '_').to_sym
end    

def ingresa_item_valor
    puts 'Ingrese un Item y Valor, separado por coma'
    ingreso = gets.chomp.gsub(' ', '_')
    arry = []
    arry = ingreso.scan(/\w+/)
    arry[0] = arry[0].to_sym
    return arry
end    

def verifica_item(item, inventario)
   if !inventario.include?(item) then puts "No Existe #{item} en Inventario" end 
   return inventario.include?(item) 
end     

opcion = 0
while opcion != 7 do
    imprime_menu(alternativas)

    opcion = solicita_opcion(alternativas)
 
    case opcion
        when 1     # Agregar un Item 
            arr_ingreso = ingresa_item_valor
            if verifica_entero(arr_ingreso[1])
            then 
                arr_ingreso[1] = arr_ingreso[1].to_i
                arr_pre_hash = []
                arr_pre_hash.push(arr_ingreso)
                print arr_pre_hash
                inventario = inventario.merge(arr_pre_hash.to_h)
                print  inventario
            elsif puts "#{arr_ingreso[1]} No es un entero"
            end     
        when 2     # Eliminar un Item
            ingreso = ingresa_item
            if verifica_item(ingreso, inventario) then 
                inventario.delete(ingreso)
            end 
            puts inventario
        when 3     # Actualizar Información 
            arr_ingreso = ingresa_item_valor
            if verifica_item(arr_ingreso[0], inventario) then 
                entero = verifica_entero(arr_ingreso[1])
                if !entero && arr_ingreso[1].to_i != 0 then 
                    print arr_ingreso
                elsif puts " #{arr_ingreso[1]} No es un Entero "
                end 
            end             
        when 4     # Ver Stock
            puts inventario.inject(0) { |suma, (key, value)| suma += value }
        when 5     # Ver Item con Mayor Stock
            mayor_item = ''
            mayor_inventario = 0
            inventario.each do |key, value|  
                if value > mayor_inventario 
                then mayor_item = key
                     mayor_inventario = value
                end
            end     
            puts "El Item #{mayor_item} tiene el mayor inventario con #{mayor_inventario} unidades"
        when 6     # Verificar un Item
            ingreso = ingresa_item
            if verifica_item(ingreso, inventario) then
                puts " #{ingreso} Existe en el Inventario"
            elsif
                puts " #{ingreso} NO Existe"     
            end 
    end

end    




