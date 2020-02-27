require 'pg'

p 'setting up test database...'
def setup_test_database 

connection = PG.connect(dbname: 'makersairbnbtest')

connection.exec("TRUNCATE users;")
end