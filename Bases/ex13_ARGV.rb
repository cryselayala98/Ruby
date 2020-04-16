# otras cosas de la entrada de datos

first, second, third = ARGV
# ARGV permite leer datos de entrada al momento de correr el archivo donde los contiene en la consola. algo así como:
# $ ruby ex13.rb primero segundo tercero
# primero segundo tercero -> son las variables que le voy a pasar como entrada a first, second, third

# $0 -> devuelve el nombre del archivo
puts "The script is called: #{$0}"


puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"



