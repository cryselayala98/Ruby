# ejercicio con herencia

## clase Animal
class Animal

end

# clase Dog, hereda los atributos y metodos de la clase Animal
class Dog < Animal
    # constructor
    def initialize(name)
        # @name -> atributo de la clase
        @name = name
    end

end

## clase Cat, hereda elementos de la clase Animal 
class Cat < Animal

    def initialize(name)
        # @name -> atributo de la clase
        @name = name
    end

end

# clase persona
class Person

    attr_accessor :pet # incluir getter y setters en 1 sola linea

    def initialize(name)
        ## atributo de la clase
        @name = name

        ## Person has-a pet of some kind
        @pet = nil
    end

end

# clase Employee hereda de la clase Person
class Employee < Person
 
    def initialize(name, salary)
        ## illamar el método initialize del padre
        super(name)
        ## @salary -> atributo de clase
        @salary = salary
    end
    
end

# clase Fish
class Fish

end

# clase Salmon hereda de Fish
class Salmon < Fish

end

#clase Halibut hereda de Fish
class Halibut < Fish

end

## rover is-a Dog
rover = Dog.new("Rover")

## Satan is a cat
satan = Cat.new("Satan")

## Mary is a perso
mary = Person.new("Mary")

## satan is the mary's pet
mary.pet = satan

## frank is a Employee
frank = Employee.new("Frank", 120000)

## rover is the frank's pet
frank.pet = rover

## flipper is a fish
flipper = Fish.new

## crouse is a Salmon
crouse = Salmon.new

## harry is a halibut
harry = Halibut.new