$users = [ {username: "crisel", password: "password1"},
          {username: "maria", password: "password2"},
          {username: "eliana", password: "password3"} ]

# metodo de autenticación para verificar si el usuario existe

def authenticate_user(username, password)

    $users.each do |user|
        if(user[:username] == username && user[:password] == password)
            return "el usuario si existe"
        else
            return "usuario equivocado"
        end
    end
end

puts "Bienvenido"
25.times { print "-"} # imprime - 25 veces

puts 
puts "Este prograama tomará la entrada del usuario y comparará si existe en la lista"

attemps = 1

while attemps < 4
    
    print "Username: "
    username = gets.chomp
    
    print "\nPassword: "
    password = gets.chomp

    puts authenticate_user(username, password)

    puts "Presione x para salir o cualquier otra letra para continuar"
    input = gets.chomp.downcase

    break if input == "x"

    attemps = attemps + 1
end

puts "Has excedido el numero de intentos"