# string format

nombre = 'Crisel'
dinero = 20000.0
lo_que_debe = 5000.6

puts "ella tiene %d dinero." % dinero # numeros enteros
puts "ella se llama %s" % nombre # cadenas


puts "ahora ella tiene %f dinero." % [dinero - lo_que_debe] # numeros flotantes
puts "ella se llama %s y debe %d dinero" % [nombre, lo_que_debe]

puts "el resultado aproximado a un solo decimal es %0.1f" % [1988.56126]

# conversion de bases
puts "122 en hexadecimal es %x" % [122]

# rellenar una cadena con ceros
# imprimir una cadena de 6 caracteres. relleno los espacios sobrantes con ceros
puts "valor de 6 digitos %06d" % [20]

# se puede usar el string format dentro de una cadena
saludo = "Hola %s" % nombre
puts saludo

# imprimir espacios junto a la cadena (rellena los espacios sobrantes con espacios)
#imprimir 10 caracteres, lo que quede sobrante se imprimen espacios hasta que complete 10 caracteres
# espacios a la izquierda
right = "nombre: [%10s]" % nombre
puts right

# espacios a la derecha
left = "nombre: [%-10s]" % nombre
puts left

# %d -> decimal
# %s -> string
# %f -> float
# %x -> hexadecimal