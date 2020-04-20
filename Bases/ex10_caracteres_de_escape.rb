# caracteres de escape

# \t -> tabulación (correr unos espaios adelante)
# \n -> salto de línea
# si quiero usar doble comilla dentro de la doble comilla, debo usar el caracter de escape (\) antes de la doble comilla (\") para que esa doble comilla sea reconocida como parte del texto y no como finalización de una cadena.
# lo mismo sucede si quiero utilizar el caracter de escape (\) como parte de la cadena. Debo hacer esto (\\).

# también puedo usar la sintaxis heredoc para facilitar las cosas


tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."


fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n
\t* Grass
MY_HEREDOC

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat
