require_relative 'crypt' # importar el modulo con los metodos de encriptacion creados
require 'bcrypt'

# $ -> para hacer la variable global y que se pueda utilizar dentro de los 
       # métodos
$users = [ {username: "crisel", password: "password1"},
           {username: "maria", password: "password2"},
           {username: "eliana", password: "password3"} ]


=begin

# encriptar
my_password = BCrypt::Password.create("12345")
my_password_2 = BCrypt::Password.create("12345")
my_password_3 = BCrypt::Password.create("12345")
puts my_password, my_password_2, my_password_3 # 3 contraseñas diferentes

# desencriptar
password = BCrypt::Password.new("$2a$12$pNkuIE.gg75.OLP34JHU1eALxOYi59pHqlJkKPG3l3y5uoqHz4jMu")

puts password == "12345"
puts password == "67890"
puts

=end

new_password = Crypt.create_hash_password("12345")
puts new_password == "12345" # true

puts "encriptando las contraseñas"
$users = Crypt.create_secure_users($users)
puts $users

puts "autenticando usuarios"
puts Crypt.authenticate_user("eliana", "password7", $users)




# Instalar bcrypt en RepL
  # - (escribir esto antes de cualquier código):
     # require 'bundler/inline'

     # gemfile true do
       # source 'http://rubygems.org'
       # gem 'bcrypt'
     # end

  # - ejecutar en la consola: ruby main.rb

# Instalar bcrypt en local
  # $ gem install bcrypt


