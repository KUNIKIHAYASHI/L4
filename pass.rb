require 'bcrypt'

# Hash a password for signup
signup_password = BCrypt::Password.create("my password")
puts "Hashed password: #{signup_password}"

# Simulating user login
# Assume this is the password entered during login

# Verify the password
if User.find_by(uid:params[:uid])
  login_password = BCrypt::Password.new(signup_password)
  if login_password == 'my password'
    puts "ログイン成功"  # "Login successful"
  else
    puts "ログイン失敗"
  end # "Login failed"
end



#rails C
#User.create(uid, pass)