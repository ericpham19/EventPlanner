 require "pry"
 class HomepageController < ApplicationController

    def index

    @bookings = Booking.all
    @booking_types = BookingType.all
        
    end

    def content

    end

end