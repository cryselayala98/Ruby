module Crypt

  require 'bcrypt'

  puts "modulo de encriptación activado"

  def Crypt.create_hash_password(password) # Crypt. -> hace que sea un método de clase. también se puede utilizar la denominación self.
    return BCrypt::Password.create(password)
  end

  def Crypt.verify_hashes(password)
    return BCrypt::Password.new(password)
  end

  def self.create_secure_users(users)
    users.each do |user|
      user[:password] = create_hash_password(user[:password])
    end
    return users
  end

  def Crypt.authenticate_user(username, password, users)
    
    users.each do |user|
      if user[:username] == username && verify_hashes(user[:password]) == password
        return user
      end
    end

    return "Las credenciales no son correctas";

  end

end