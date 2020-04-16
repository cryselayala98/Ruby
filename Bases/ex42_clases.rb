# clases y poo en Ruby

class TheThing
    attr_reader :number # hacer que elatributo sea accesible (una forma de crear un getter del atributo)
    attr_writer :number # setter

    # attr_accessor :name, :age, :sex, :email # -> getter y setter al mismo tiempo


    def initialize()
        @number = 0 # @ -> indica como atributo de tipo privado para la clase
    end
    
    def some_function()
        puts "I got called."
    end
    
    def add_me_up(more)
        @number += more
        return @number
    end
end
# crear objetos
a = TheThing.new
b = TheThing.new

a.some_function()
b.some_function()

puts a.add_me_up(20)
puts a.add_me_up(20)
puts b.add_me_up(30)
puts b.add_me_up(30)

puts a.number
puts b.number