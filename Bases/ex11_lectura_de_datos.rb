# Lectura de Datos

# gets lee Cadenas de texto solamente
# gets.chomp lee cualquier tipo de dato

nombre = gets
puts nombre

palabra = STDIN.gets.chomp() # otra forma de leer datos

print "How old are you? "
age = gets.chomp()

print "How tall are you? "
height = gets.chomp()

print "How much do you weigh? "
weight = gets.chomp()


puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

suma = age + height
puts "sumar #{suma}" # print "sumar 12121"


# lectura de datos infinita
loop do
    puts "presione Y para salir, N para seguir"
    t = gets.chomp
    break if(t.downcase == 'y')
end

