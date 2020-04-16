=begin

Listado de palabras reservadas

• alias -> como palabra reservada, hace lo mismo que el #define de c++
• and
• BEGIN
• begin
• break
• case
• class
• def -> palabra reservada para declarar funciones
• defined? -> metodo para verificar el tipo de variable y su alcance, si no existe retorna nil ex. 
              defined?(apple)
• do
• else
• elsif
• END
• end
• ensure -> variable para manejar excepciones. se coloca después del "rescue" y se ejecuta  
            independientemente del éxito o el fracaso del bloque de inicio. tiene la misma funcionalidad de finally
• false
• for
• if
• in
• module
• next -> hace la misma funcion del "continue" en algunos lenguajes de programacion
• nil
• not
• or
• redo -> variable para repetir una iteración en un bloque de código dado una condición establecida     
          (https://rubyquicktips.com/post/1122838559/redo-vs-retry)
• rescue -> variable para manejar excepciones (tiene la misma funcionalidad del catch)
• retry -> variable para repetir un loop desde cero dentro de un bloque de código dado una condición 
           establecida (https://rubyquicktips.com/post/1122838559/redo-vs-retry)
• return
• self
• super -> para llamar a una función de la clase padre en herencia.
• then -> en los if, se puede colocar then cuando una condicion se vuelve true, es opcional. 
          ex: if(true) then ... end
• true
• undef
• unless -> es lo contrario del if. se coloca en reemplazo del if para comprobar si una sentencia es 
            falsa
• until -> hace lo opuesto del while loop, entra al bloque de codigo si la condicion es falsa
• when
• while
• yield -> esto no debería existir :v jajajajajaj pa que sirve?. hace algo similar a cuando se llama un 
           método dentro de otro método (https://mixandgo.com/learn/mastering-ruby-blocks-in-less-than-5-minutes)


Listado de tipos de datos

• true
• false
• nil -> null
• constants
• strings
• numbers
• ranges
• arrays
• hashes

Listado de secuencias de escape

• \\
• \’
• \"
• \a
• \b
• \f
• \n
• \r
• \t
• \v



=end