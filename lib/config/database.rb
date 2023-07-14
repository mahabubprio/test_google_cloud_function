
#==============
puts "-"*100
p "Database Connection file"
p "Database Name: #{ENV['DATABASE']}"
puts "-"*100

ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  host: 'localhost',
  port: 3306,
  database: ENV.fetch('DATABASE'),
  username: ENV.fetch('MYSQL_USER'),
  password: ENV.fetch('MYSQL_PASSWORD')
)

