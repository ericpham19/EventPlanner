
 class HomepageController < ApplicationController

    def index

    @user = User.find_by(id: session[:user_id])
    if @user.present?
       @bookings = @user.bookings
    end

    @booking_types = BookingType.all
        
    end

    def content

    end

end