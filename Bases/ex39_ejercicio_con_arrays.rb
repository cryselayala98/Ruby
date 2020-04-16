ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there's not 10 things in that list, let's fix that."

stuff = ten_things.split(' ') # toma el string y lo convierte en un array, en este caso separado por 
                              # espacios

more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy) # %w -> para escribir. en este caso estoy  
                                                             # escribiendo un array y almacenándolo en la vaiable more_stuff

# llenar el array hasta que tenga 10 elementos
while stuff.length != 10
    next_one = more_stuff.pop()
    puts "Adding: #{next_one}"
    stuff.push(next_one)
    puts "There's #{stuff.length} items now."
end


puts "There we go: #{stuff}"
puts "Let's do some things with stuff."
puts stuff[1]
puts stuff[-1] # retorna el último elemento del array
puts stuff.pop()
puts stuff.join(' ') # convierte el array en string, en este caso separado por espacios, se puede 
                     # establecer cualquier cadena delimitadora como parámetro
puts stuff.values_at(3,5).join('#') # values_at-> retorna un array que contiene el primer y último 
                                    # elemento del rango establecido 
