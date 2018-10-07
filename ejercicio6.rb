# Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor
# es el precio de este.
#     restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# 1. Obtener el plato mas caro.
# 2. Obtener el plato mas barato.
# 3. Sacar el promedio del valor de los platos.
# 4. Crear un arreglo con solo los nombres de los platos.
# 5. Crear un arreglo con solo los valores de los platos.
# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
# 7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una
# palabra.

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

# 1
puts restaurant_menu.inject(0) { | max_value, (key, value) | max_value = (value > max_value) ? value : max_value }


# 2 
puts restaurant_menu.inject(0) { | min_value, (key, value) | 
    min_value = (value < min_value & min_value != 0) ? value : min_value 
}


# 3
puts ( restaurant_menu.inject(0) { | suma, (key, value) | 
    suma += value
} / restaurant_menu.size )

# 4 
platos = restaurant_menu.map { | (key, value) | 
    key  
} 
print platos  
puts ''

# 5 
valores = restaurant_menu.map { | (key, value) | 
    value  
} 
print valores  
puts ''

# 5 
restaurant_menu_vat = restaurant_menu.map { | (key, value) | 
    arr = {key, value}  
} 
print restaurant_menu_vat  
puts ''











