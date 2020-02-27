class Bookings < ActiveRecord::Base

    belongs_to :users
    belongs_to :spaces
    
end