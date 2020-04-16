module Ex25 # Un módulo es un contenedor que agrupa constantes, clases y métodos.
    def self.break_words(stuff) # métodos self -> funcionalidades pertenecientes a la clase creada.     
                                # Esto hace que esos métodos se ejecuten en sí mismos en la clase, como si la propia clase o módulo se comportara como un objeto en sí mismo (algo parecido a los métodos estáticos en java). En caso de que no se coloque la palabra self, los métodos pertenecerán a las variables de instancia creadas a partir de la clase.

        # This function will break up words for us.
        words = stuff.split(' ')
        words
    end
   
    def self.sort_words(words) # words es un array de palabras
        # Sorts the words.
        words.sort()
    end
   
    def self.print_first_word(words)
        # Prints the first word and shifts the others down by one.
        # shift() remueve los primeros n elementos del string y los retorna
        word = words.shift(1)
        puts word
    end
   
    def self.print_last_word(words)
        # Prints the last word after popping it off the end.
        # elimina el último elemento y retorna
        word = words.pop()
        puts word
    end
    
    def self.sort_sentence(sentence) # sentence es una cadena
        # Takes in a full sentence and returns the sorted words.
        words = break_words(sentence)
        sort_words(words)
    end
   
    def self.print_first_and_last(sentence)
        # Prints the first and last words of the sentence.
        words = break_words(sentence)
        print_first_word(words)
        print_last_word(words)
    end
   
    def self.print_first_and_last_sorted(sentence)
        # Sorts the words then prints the first and last one.
        words = sort_sentence(sentence)
        print_first_word(words)
        print_last_word(words)
    end
end

#usar los métodos de self en sí mismos

sentence = "All good things come to those who wait."
puts "palabras de la frase "
words = Ex25.break_words(sentence)
puts words

puts "palabras ordenadas de la frase"
sorted_words = Ex25.sort_words(words)
puts sorted_words

puts "imprimir primera y ultima palabra"
Ex25.print_first_word(words)
Ex25.print_last_word(words)

puts "imprimir palabras de la frase como un array"
puts words

puts "imprimir primera y ultima palabra de la lista de palabras ordenadas"
Ex25.print_first_word(sorted_words)
Ex25.print_last_word(sorted_words)

puts "ordenar palabras ordenadas"
puts sorted_words

puts "frase ordenada"
puts Ex25.sort_sentence(sentence)

puts "imprimir primera y ultima palabra de la frase ordenada y no ordenada"
Ex25.print_first_and_last(sentence)
Ex25.print_first_and_last_sorted(sentence)

# para ejecutar en sí mismo (consola)

=begin
    
$ irb
irb(main):001:0> require './ex25'
=> true
irb(main):002:0> sentence = "All good things come to those who wait."
=> "All good things come to those who wait."
irb(main):003:0> words = Ex25.break_words(sentence)
=> ["All", "good", "things", "come", "to", "those", "who", "wait."]
irb(main):004:0> sorted_words = Ex25.sort_words(words)
=> ["All", "come", "good", "things", "those", "to", "wait.", "who"]
irb(main):005:0> Ex25.print_first_word(words)
All
=> nil
irb(main):006:0> Ex25.print_last_word(words)
wait.
=> nil
irb(main):007:0> Ex25.wrods
NoMethodError: undefined method `wrods' for Ex25:Module
from (irb):6
irb(main):008:0> words
=> ["good", "things", "come", "to", "those", "who"]
irb(main):009:0> Ex25.print_first_word(sorted_words)
All
=> nil
irb(main):010:0> Ex25.print_last_word(sorted_words)
who
=> nil
irb(main):011:0> sorted_words
=> ["come", "good", "things", "those", "to", "wait."]
irb(main):012:0> Ex25.sort_sentence(sentence)
=> ["All", "come", "good", "things", "those", "to", "wait.", "who"]
irb(main):013:0> Ex25.print_first_and_last(sentence)
All
wait.
=> nil
irb(main):014:0> Ex25.print_first_and_last_sorted(sentence)
All
who
=> nil
irb(main):015:0> ^D
$
    
=end

