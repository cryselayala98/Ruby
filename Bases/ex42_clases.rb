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

=begin
 
A bit of theory

Object-oriented programming (OOP) is a programming paradigm that uses objects and their interactions to design and program applications

- Allows the program to block off areas of code that perform certain tasks independently of other areas in the application.

Encapsulation - concept of blocking off areas of code and not making it available to the rest of the program

Abstraction - is simplifying a complex process of a program, an enterprise software solution for example by modeling classes appropriate for it

Inheritance - is used where a class inherits the behavior of another class, referred to as the superclass

Polymorphism - is when a class inherits the behaviors of another class, but has the ability to not inherit everything and change some of it’s inherited behaviors. For example to write a method that does something differently from the inherited method

Classes - It is a blueprint that describes the state and behavior that the objects of the class all share. A class can be used to create many objects. Objects created at runtime from a class are called instances of that particular class.
    
=end