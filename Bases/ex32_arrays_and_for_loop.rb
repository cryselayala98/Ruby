# ciclos y arrays

the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters'] # se pueden agregar múltiples tipos de dato en los 
                                                   # arrays en Ruby

# this first kind of for-loop goes through an array
for number in the_count
    puts "This is count #{number}"
end

# same as above, but using a block instead
fruits.each do |fruit|
    puts "A fruit of type: #{fruit}"
end

# also we can go through mixed arrays too
for i in change 
    puts "I got #{i}"
end

# we can also build arrays, first start with an empty one
# inicializar un array
elements = []

# then use a range object to do 0 to 5 counts
# agregando elementos
for i in (0..5) # Rango (0..5) -> agrega del 0 al 5 
                # Rango (0...5) -> agrega del 0 al 4
    puts "Adding #{i} to the list."
    # push is a function that arrays understand
    elements.push(i)
end

# now we can puts them out too
for i in elements
    puts "Element was: #{i}"
end

arr = [1,2,3,4,5,6,7,8,9] # 9 elementos

puts arr[-1] # imprime arr[arr.size -1]
puts arr[-2] # imprime arr[arr.size -2]
puts arr[-3] # imprime arr[arr.size -3]
puts arr[-4] # imprime arr[arr.size -4]
puts arr[2, 3] # imprime un rango de numeros (desde la posicion 2, hasta 3 numeros más adelante)
puts arr[1..4] # imprime desde la pos 1 hasta la pos 4


#Notas sacadas de https://ruby-doc.org/core-2.5.0/Array.html (algunas funciones)

# inicializando arrays
arr = Array.new    #=> []
arr_2 = Array.new(3)       #=> [nil, nil, nil]
arr_3 = Array.new(3, true) #=> [true, true, true]
arr_4 = Array.new(5, 25) #=> [25, 25, 25, 25, 25]

arr = Array.new(4) { Hash.new }  #=> [{}, {}, {}, {}] Hash -> diccionarios
arr_5 = Array.new(4) {|i| i.to_s } # llenar el array (0,1,2,3)


# Array Multimensional
empty_table = Array.new(3) { Array.new(3) }
#=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]

puts "first #{arr.first}"  #=> primer elemento
puts "last #{arr.last}" #=> ultimo elemento

puts "3 primeros elementos #{arr.take(3)}" # n primeros elementos del array
puts arr.drop(3) #=> retorna los n ultimos elementos despues de eliminarlos

puts arr, arr_2, arr_3, arr_4, arr_5

arr.length #=> size del array
arr.count # size del array

arr.empty? #=> verificar si el array tiene elementos

arr.include?('Konqueror') #=> verificar la existencia de elementos

arr14 = arr.reverse # invertir el orden de los valores en otra variable
arr.reverse! # invertir el orden de los valores en el mismo array, en sí mismo

# insertar elementos
arr = [1, 2, 3, 4]
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]

# agregar elementos al inicio del array
arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]

# agregar elementos en una posicion específica
arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]

#elimina y retorna elementos
arr.pop #=> 6

#elimina y retorna el primer elemento
arr.shift #=> 1
arr #=> [2, 3, 4, 5]

#eliminar en un determinado índice

#eliminar todaslas existencias de un número determinado
arr = [1, 2, 2, 3]
arr.delete(2) #=> elimina todas las instancias de 2
arr #=> [1,3]

print "hola #{arr.shuffle}" # shuffle -> revuelve los elementos del array de forma random

arr<<25 # otra forma de agregar elementos 
puts arr 

arr2 = arr.uniq # elimina los elementos duplicados
arr.uniq! # elimina los elementos duplicados en sí mismo

numbers = (0..25).to_a # crea un array con los numeros del 0 al 25
puts numbers

numbers = (0..9).to_a.shuffle! # crea un array con elementos del 0 al 9 ordenados aleatoriamente
puts numbers