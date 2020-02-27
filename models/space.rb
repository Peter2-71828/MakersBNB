class Space < ActiveRecord::Base

    belongs_to :users
    has_many :bookings
    has_many :availability

end
