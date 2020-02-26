class Space < ActiveRecord::Base


    has_many :bookings 
    has_many :listings

end
