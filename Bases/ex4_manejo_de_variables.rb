# manejo de variables

variable_1 = 100
variable_2 = 500

variable_3 = variable_1 + variable_2

# convertir a float
20.to_f

es_verdadero = false #valor booleano

# integrar variables en strings (string interpolation)
puts "El resultado de la suma es #{variable_3}."

# esto funciona correctamente
cadena = "El resultado de la suma es #{variable_3}."
puts cadena

# para saber a que clase pertenece la variable
puts cadena.class # prints String

# para conocer los métodos a los cuales un objeto tiene disponible
puts cadena.methods # metodos de la clase String