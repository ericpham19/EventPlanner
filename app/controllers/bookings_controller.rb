
class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit update destroy ]
  before_action :set_booking_type, only: %i[ new edit ]
  skip_before_action :set_current_user

  def index
    @bookings = Booking.all
    @booking_types = BookingType.all
 
  end


  def show
    
  end


  def new
    @booking = Booking.new
  
  end


  def edit
   
  end


  def create
    @booking = Booking.new(booking_params)
  
      if @booking.save
      redirect_to booking_url(@booking)
      flash[:notice] = "Booking has been created sucessfully"
      else
       render :new

      end
   
  end


  def update
    @booking = Booking.find(params[:id])
      if @booking.update(booking_params)  
         redirect_to booking_url(@booking)
         flash[:notice] = "Booking has been updated successfully"

      else
      render :edit

      
      end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_url
    flash[:notice] = "Booking was successfully destroyed."


  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_booking_type
    @booking_type = BookingType.find_by(category: params[:booking_type])
  end


  def booking_params
    params.require(:booking).permit( :first_name, :last_name, :email, :start_at, :end_at, :booking_id, :booking_type_id)
  end
end
