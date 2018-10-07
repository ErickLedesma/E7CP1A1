# Dados los siguientes array:
#     meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
#     ventas = [2000, 3000, 1000, 5000, 4000]
# Generar un hash que contenga los meses como llave y las ventas como valor:
#     h = {'Enero': 2000, 'Febrero': 3000 ... }
# En base al hash generado:
# 1. Invertir las llaves y los valores del hash.
# 2. Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)

meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

h_meses = {}
meses.each_with_index do |mes, index|
    h_meses[mes] = ventas[index]
end 

print h_meses  
puts ''

# 1
h_puente = {}
h_meses.each do |key, value|
#    puts key, value
    h_puente[value] = key
    h_meses.delete(key)
end       
h_meses = h_puente.clone
h_puente = nil


print h_meses  
puts ''

# 2 
¿Como obtener la lista de metodos de ruby?



