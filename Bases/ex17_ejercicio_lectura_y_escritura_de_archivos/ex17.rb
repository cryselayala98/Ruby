# ejercicio con lectura y escritura de archivos
# copiar el contenido de un archivo en otro archivo

from_file, to_file = ARGV # al ejecutar -> $ ruby ex17.rb antes.txt despues.txt
script = $0

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how?
input = File.open(from_file)
indata = input.read() # abrir el archivo inicial en modo lectura y copiar su contenido

puts "The input file is #{indata.length} bytes long" # indata.length -> size de la cadena que contiene 
                                                     #el txt

puts "Does the output file exist? #{File.exists? to_file}" # File.exists? -> pregunta si el archivo 
                                                           #existe
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)
puts "Alright, all done."

output.close()
input.close()