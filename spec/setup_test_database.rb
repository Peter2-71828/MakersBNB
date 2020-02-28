require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'makersairbnbtest')
  connection.exec("TRUNCATE users, spaces, bookings, spaces ;")
  
end 