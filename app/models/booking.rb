class Booking < ApplicationRecord
    belongs_to :booking_type
    validates :first_name, :last_name,:start_at, :end_at, presence: true



    
    
end
