class User < ActiveRecord::Base
    has_many :spaces
    has_many :bookings
    has_many :listing

end