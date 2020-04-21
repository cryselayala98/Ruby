require_relative 'student'
require_relative 'crypt'


students = Array.new

loop do
    puts "Bienvenido Administrador. Estamos en el módulo interactivo para el manejo de la información de los estudiantes.\n- Si desea registrar un estudiante presione la tecla 'y'.\n- Si desea verificar usuarios presione la tecla 'q'.\n- Si desea listar los estudiantes presione la tecla 'l'.\n- Si desea salir de la pantalla interactiva presione cualquier otra tecla."

    option = gets.chomp

    if option == 'y'
        40.times { print "-"}
        puts

        puts "Digite el nombre del estudiante, luego presione enter"
        name = gets

        puts "Digite el apellido del estudiante, luego presione enter"
        last_name = gets

        puts "Digite el correo del estudiante, luego presione enter"
        email = gets

        puts "Digite el nombre de usuario del estudiante, luego presione enter"
        username = gets

        puts "Digite una nueva contraseña para el estudiante, luego presione enter"
        password = gets

        students.push(Student.new(name, last_name, email, username, password))

        puts "\nUsuario agregado exitosamente."
        40.times { print "-"}
        puts

    elsif option == 'q'

        40.times { print "-"}
        puts

        puts "Digite el nombre de usuario estudiante"
        username = gets

        puts "Digite la contraseña del estudiante"
        password = gets

        verify = false

        students.each do |student|
            if student.username == username && Crypt.verify_hashes(student.password) == password
                puts "El estudiante existe."
                puts student
                verify = true
                break
            end
        end
        
        if !verify
            puts "El usuario no está registrado en la plataforma."
        end

        40.times { print "-"}
        puts

    elsif option == 'l'
        40.times { print "-"}
        puts

        puts "Hay un total de #{students.length} estudiantes registrados.\n"


        for i in (0...students.length) # (..) -> 0,students.length; (...) -> 0,students.length -1; 

            puts "Estudiante #{i+1}:\n"
            puts students[i] # imprime el metodo to_s
            puts 
        end

        40.times { print "-"}
        puts
    else
        "Ha salido exitosamente."
        break
    end
end