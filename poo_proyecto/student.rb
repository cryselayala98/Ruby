class Student

    # insertar getters y setters automaticamente
    attr_accessor :first_name, :last_name, :email, :username, :password

    # insertar solo getters
    # attr_reader :username

    @first_name
    @last_name
    @username
    @email
    @password
    # @username = "criselayala98" # no va a mostrar nada cuando se imprima el 
                                  # objeto, tocaría crear un metodo setter y llamarlo al crear el objeto, o volver la variable username como un atributo de clase (@@username)

    # método constructor
    def initialize(first_name, last_name, email, username, password)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @username = username
        @password = password
    end


    def set_username
        @username = "criselayala98"
    end

    # configurar un método setter
    # def first_name=(name)
    #    @first_name = name
    # end

    # configurar un método getter
    # def first_name
    #    @first_name
    # end

    # Método to_string                            
    def to_s 
        "First name: #{@first_name} \n" +
        "Last name: #{@last_name} \n" +
        "Nombre de usuario: #{@username} \n" +
        "Correo: #{@email} \n" + 
        "Contraseña: #{@password}"
    end
end

Jazmin = Student.new("", "", "", "", "")

# Jazmin.first_name("Crisel Jazmin")
Jazmin.first_name = "Crisel Jazmin" 
Jazmin.set_username
puts Jazmin # imprime el método to_s por defecto
puts Jazmin.first_name

Abel = Student.new("Abel", "Ayala", "unamoscaentupared@gmail.com", "tito2005",  
                   "12345")
puts Abel