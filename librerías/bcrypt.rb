require 'bcrypt'

# encriptar
my_password = BCrypt::Password.create("12345")
puts my_password

# desencriptar
password = BCrypt::Password.new("$2a$12$pNkuIE.gg75.OLP34JHU1eALxOYi59pHqlJkKPG3l3y5uoqHz4jMu")

puts password == "12345"
puts password == "67890"



# Instalar bcrypt en RepL
  # - En main.rb (escribir esto antes de cualquier código):
     # require 'bundler/inline'

     # gemfile true do
       # source 'http://rubygems.org'
       # gem 'bcrypt'
     # end

  # - ejecutar en la consola: ruby main.rb

# Instalar bcrypt en local
  # $ gem install bcrypt


