# Ejercicio con lectura de datos e impresión
# como un formulario donde preguntan datos personales

user = ARGV.first # cuando ejecute el programa, debo pasar le un argumento. ej $ ruby ex14.rb Crisel
prompt = '> '

puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp() # al usar ARGV, toca usar el método de lectura de datos de STDIN obligatoriamente, de lo contrario botará error

# Important: Also notice that we’re using STDIN.gets instead of plain ‘ol gets. That is because if there is stuff in ARGV, the default gets method tries to treat the first one as a file and read from that. To read from the user’s input (i.e., stdin) in such a situation, you have to use it STDIN.gets explicitly.

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
MESSAGE

puts <<CUALQUIER_COSA
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
CUALQUIER_COSA
