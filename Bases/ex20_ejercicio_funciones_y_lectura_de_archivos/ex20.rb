# ejercicio con funciones y lectura en archivos

input_file = ARGV[0]

def print_all(f)
    puts f.read()
end

def rewind(f)
    f.seek(0, IO::SEEK_SET) # seek() -> se devuelve a la línea definida como parámetro (en este caso,   
                            # la línea 0) del txt para que luego se pueda imprimir desde la línea especificada
end

def print_a_line(line_count, f)
    puts "#{line_count} #{f.readline()}"
end

current_file = File.open(input_file)
puts "First let's print the whole file:"
puts # a blank line

print_all(current_file)

puts "Now let's rewind, kind of like a tape."
rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)
current_line = current_line + 1
print_a_line(current_line, current_file)
current_line = current_line + 1
print_a_line(current_line, current_file)