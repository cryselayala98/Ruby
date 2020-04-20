# Funciones de lectura y escritura de archivos

# • close – Closes the file. Like File->Save.. in your editor.
# • read – Reads the contents of the file, you can assign the result to a variable.
# • readline – Reads just one line of a text file.
# • truncate – Empties the file, watch out if you care about the file.
# • write(stuff) – Writes stuff to the file.

filename = ARGV.first # al ejecutar $ ruby ex16.rb ex16_sample.txt
script = $0 # $0-> nombre del archivo actual (ex16.rb)

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets # Leer dato

puts "Opening the file..."
target = File.open(filename, 'w') # abrir archivo en modo de escritura. para poder leer el contenido, hay que cerrar (close) y usar otra vez el metodo File.open sin el 'w'

puts "Truncating the file. Goodbye!"
target.truncate(target.size) # elimina todo el contenido del archivo

puts "Now I'm going to ask you for three lines."

# leer 3 frases
print "line 1: "; 
line1 = STDIN.gets.chomp()
print "line 2: "; 
line2 = STDIN.gets.chomp()
print "line 3: "; 
line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

# escribir información en el archivo
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")


target.close()
target = File.open(filename) # abrir en modo de lectura
puts target.readline() # imprimir hasta el primer salto de linea del txt

puts "And finally, we close it."

target.close()