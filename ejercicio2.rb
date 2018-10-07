# 1. Se tiene el siguiente hash:
#     productos = {'bebida' => 850, 'chocolate' => 1200,
#                  'galletas' => 900, 'leche' => 750}
# y se realiza la siguiente consulta para conocer los productos existentes:
#         Productos.each { |valor, producto| puts producto }
# Corrige el error para mostrar la información solicitada.

# 2. Se quiere agregar un nuevo producto al hash:
#     producto[2200] = cereal
# Corrige la instrucción para agregar el producto.

# 3. Se quiere actualizar el precio de la bebida:
#     producto[:bebida] = 2000
# Corrige la instrucción para actualizar el valor del producto existente.

# 4. Convertir el hash en un array y guardarlo en una nueva variable.

# 5. Eliminar el producto 'galletas' del hash.


# 1
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos.each { |producto, valor| puts producto }

# 2 
productos["cereal"] = 2200
print productos
puts ""

# 3 
productos["bebida"] = 2000
print productos
puts ""

# 4
arr_productos = productos.to_a
print arr_productos
puts ""

# 5 
productos.delete('galletas')
print productos
puts ""
