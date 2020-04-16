# diccionaios o hashes

cities = {'CA' => 'San Francisco',
          'MI' => 'Detroit',
          'FL' => 'Jacksonville'}
    
    # agregar elementos 
    cities['NY'] = 'New York'
    cities['OR'] = 'Portland'
    
    def find_city(map, state)
        if map.include? state # verificar de existencia de un valor para la clave especificada
            return map[state]
        else
            return "Not found."
        end
    end
    
    # almacenar un procedimiento en una variable (Proc). en este caso la clave 'find' contiene la funcion 'find_city'
    cities[:find] = method(:find_city)
    
    
    while true
        print "State? (ENTER to quit) "
        state = gets.chomp
        
        break if state.empty?
    
        # llamar el procedimiento que está contenido en el diccionario (.call)
        puts cities[:find].call(cities, state)
    end


# algunas notas de los diccionarios sacados de https://ruby-doc.org/core-2.7.0/Hash.html

# otra forma de declarar las claves (usando : , o si se quiere no es necesario colocar : ni tampoco las comillas)
options = { :font_size => 10, :font_family => "Arial" }
options[:font_size] # para acceder a un valor, pasando como parámetro la clave

puts cities['NY'];

# inicializar un diccionario desde cero
grades = Hash.new

# para establecer todas los valores por defecto (para que cuando se acceda a una clave que no existe, retorne ese valor, en este caso 0, de lo contrario retornará nil):
grades = Hash.new(0)

# otro ejemplo

books         = {}
books[:matz]  = "The Ruby Programming Language"
books[:black] = "The Well-Grounded Rubyist"

# limpiar un diccionario
books.clear 

# iterar sobre diccionarios
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

restaurant_menu.each do | item, price |
  puts "#{item}: $#{price}"
end

# otra forma de iterar
h = { "a" => 100, "b" => 200 }
h.each {|key, value| puts "#{key} is #{value}" }



puts h.empty? # verificar diccionarios nulos