class Booking < ApplicationRecord
    belongs_to :booking_type
    validates :first_name, :last_name, presence: true


    
    
end
