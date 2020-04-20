#manejo de strings

x = "There are #{10} types of people."

binary = "binary"
do_not = "don't"

y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y


puts "I said: #{x}."
puts "I also said: '#{y}'."

hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"
puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

# concatenar cadenas
puts w + e

#imprimir con saltos de línea, "\n" y , hacen lo mismo
puts "hola " + " mundo \ncrisel"
puts "hola " + " mundo","crisel"
puts #también se puede hacer esto para imprimir saltos de línea

# usar los caracteres de escape para ignorar las variables
puts " Hola \#{binary}"