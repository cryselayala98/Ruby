# lectura de archivos

# $ para ejecutar ruby ex15.rb ex15_sample.txt
filename = ARGV.first


prompt = "> "

txt = File.open(filename) #open the file

puts "Here's your file: #{filename}" # imprime el nombre del filename
puts txt.read() # Read the file. imprime lo que contiene el filename

puts "I'll also ask you to type it again:"
print prompt

txt.close() # siempre es importante cerrar los archivos para liberar espacio. También guarda cambios

file_again = STDIN.gets.chomp() # pregunta de nuevo por el nombre del archivo. se debe escribir         
                                # (ex15_sample.txt)

txt_again = File.open(file_again)
puts txt_again.read()

txt_again.close()